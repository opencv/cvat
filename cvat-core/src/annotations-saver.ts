// Copyright (C) 2019-2022 Intel Corporation
// Copyright (C) 2022-2023 CVAT.ai Corporation
//
// SPDX-License-Identifier: MIT

import serverProxy, { sleep } from './server-proxy';
import { Task } from './session';
import { ScriptingError, ServerError } from './exceptions';
import { SerializedShape, SerializedTag, SerializedTrack } from './server-response-types';

function removeServerID<T extends SerializedShape | SerializedTag | SerializedTrack>(object: T): T {
    delete object.id;
    if ('shapes' in object) {
        for (const shape of object.shapes) {
            delete shape.id;
        }
    }

    if ('elements' in object) {
        object.elements = object.elements.map((element) => removeServerID(element));
    }
}

export default class AnnotationsSaver {
    private sessionType: 'task' | 'job';
    private id: number;
    private version: number;
    private collection: any;
    private hash: string;
    private initialObjects: any;

    constructor(version, collection, session) {
        this.sessionType = session instanceof Task ? 'task' : 'job';
        this.id = session.id;
        this.version = version;
        this.collection = collection;
        this.initialObjects = {};
        this.hash = this._getHash();

        // We need use data from export instead of initialData
        // Otherwise we have differ keys order and JSON comparison code incorrect
        const exported = this.collection.export();

        this._resetState();
        for (const shape of exported.shapes) {
            this.initialObjects.shapes[shape.id] = shape;
        }

        for (const track of exported.tracks) {
            this.initialObjects.tracks[track.id] = track;
        }

        for (const tag of exported.tags) {
            this.initialObjects.tags[tag.id] = tag;
        }
    }

    _resetState() {
        this.initialObjects = {
            shapes: {},
            tracks: {},
            tags: {},
        };
    }

    _getHash() {
        const exported = this.collection.export();
        return JSON.stringify(exported);
    }

    async _request(data, action) {
        const result = await serverProxy.annotations.updateAnnotations(this.sessionType, this.id, data, action);

        return result;
    }

    async _put(data) {
        const result = await this._request(data, 'put');
        return result;
    }

    async _create(created) {
        const result = await this._request(created, 'create');
        return result;
    }

    async _update(updated) {
        const result = await this._request(updated, 'update');
        return result;
    }

    async _delete(deleted) {
        const result = await this._request(deleted, 'delete');
        return result;
    }

    _split(exported) {
        const splitted = {
            created: {
                shapes: [],
                tracks: [],
                tags: [],
            },
            updated: {
                shapes: [],
                tracks: [],
                tags: [],
            },
            deleted: {
                shapes: [],
                tracks: [],
                tags: [],
            },
        };

        const keys = [
            'id',
            'label_id',
            'group',
            'frame',
            'occluded',
            'z_order',
            'points',
            'rotation',
            'type',
            'shapes',
            'elements',
            'attributes',
            'value',
            'spec_id',
            'source',
            'outside',
        ];

        // Find created and updated objects
        for (const type of Object.keys(exported)) {
            for (const object of exported[type]) {
                if (object.id in this.initialObjects[type]) {
                    const exportedHash = JSON.stringify(object, keys);
                    const initialHash = JSON.stringify(this.initialObjects[type][object.id], keys);
                    if (exportedHash !== initialHash) {
                        splitted.updated[type].push(object);
                    }
                } else if (typeof object.id === 'undefined') {
                    splitted.created[type].push(object);
                } else {
                    throw new ScriptingError(
                        `Id of object is defined "${object.id}" but it absents in initial state`,
                    );
                }
            }
        }

        // Now find deleted objects
        const indexes = {
            shapes: exported.shapes.map((object) => +object.id),
            tracks: exported.tracks.map((object) => +object.id),
            tags: exported.tags.map((object) => +object.id),
        };

        for (const type of Object.keys(this.initialObjects)) {
            for (const id of Object.keys(this.initialObjects[type])) {
                if (!indexes[type].includes(+id)) {
                    const object = this.initialObjects[type][id];
                    splitted.deleted[type].push(object);
                }
            }
        }

        return splitted;
    }

    _updateCreatedObjects(saved, indexes) {
        const savedLength = saved.tracks.length + saved.shapes.length + saved.tags.length;
        const indexesLength = indexes.tracks.length + indexes.shapes.length + indexes.tags.length;
        if (indexesLength !== savedLength) {
            throw new ScriptingError(
                `Number of indexes is differed by number of saved objects ${indexesLength} vs ${savedLength}`,
            );
        }

        // Updated IDs of created objects
        for (const type of Object.keys(indexes)) {
            for (let i = 0; i < indexes[type].length; i++) {
                const clientID = indexes[type][i];
                this.collection.objects[clientID].updateServerID(saved[type][i]);
            }
        }
    }

    _receiveIndexes(exported) {
        // Receive client indexes before saving
        const indexes = {
            tracks: exported.tracks.map((track) => track.clientID),
            shapes: exported.shapes.map((shape) => shape.clientID),
            tags: exported.tags.map((tag) => tag.clientID),
        };

        // Remove them from the request body
        exported.tracks
            .concat(exported.shapes)
            .concat(exported.tags)
            .map((value) => {
                delete value.clientID;
                return value;
            });

        return indexes;
    }

    async save(onUpdateArg) {
        const onUpdate = typeof onUpdateArg === 'function' ? onUpdateArg : (message) => {
            console.log(message);
        };

        const exported = this.collection.export();
        const { flush } = this.collection;
        if (flush) {
            onUpdate('All collection is being saved on the server');
            const indexes = this._receiveIndexes(exported);

            // remove server IDs if there are any, annotations will be rewritten
            for (const type of Object.keys(exported)) {
                for (const object of exported[type]) {
                    removeServerID(object);
                }
            }
            const savedData = await this._put({ ...exported, version: this.version });
            this.version = savedData.version;
            this.collection.flush = false;

            this._updateCreatedObjects(savedData, indexes);
            this._resetState();
            for (const type of Object.keys(this.initialObjects)) {
                for (const object of savedData[type]) {
                    this.initialObjects[type][object.id] = object;
                }
            }
        } else {
            // with using ASGI server it is possible to get 504 (RequestTimeout)
            // from nginx proxy, when the request is still being processed by the server
            // that is not good that client knows about the server details
            // but we implemented a workaround here
            const retryIf504Status = async (error: unknown): Promise<void> => {
                if (error instanceof ServerError && error.code === 504) {
                    const RETRY_PERIOD = 10000;
                    this.collection.flush = true;

                    let retryCount = 10;
                    while (retryCount) {
                        try {
                            await this.save(onUpdateArg);
                            return;
                        } catch (_: unknown) {
                            retryCount--;
                            await sleep(RETRY_PERIOD);
                        }
                    }
                }

                throw error;
            };

            const { created, updated, deleted } = this._split(exported);

            onUpdate('Created objects are being saved on the server');
            const indexes = this._receiveIndexes(created);
            let createdData = null;
            try {
                createdData = await this._create({ ...created, version: this.version });
                this.version = createdData.version;
            } catch (error: unknown) {
                await retryIf504Status(error);
                return;
            }

            this._updateCreatedObjects(createdData, indexes);
            for (const type of Object.keys(this.initialObjects)) {
                for (const object of createdData[type]) {
                    this.initialObjects[type][object.id] = object;
                }
            }

            onUpdate('Updated objects are being saved on the server');
            this._receiveIndexes(updated);
            let updatedData = null;
            try {
                updatedData = await this._update({ ...updated, version: this.version });
            } catch (error: unknown) {
                await retryIf504Status(error);
                return;
            }
            this.version = updatedData.version;

            for (const type of Object.keys(this.initialObjects)) {
                for (const object of updatedData[type]) {
                    this.initialObjects[type][object.id] = object;
                }
            }

            onUpdate('Deleted objects are being deleted from the server');
            this._receiveIndexes(deleted);
            let deletedData = null;
            try {
                deletedData = await this._delete({ ...deleted, version: this.version });
            } catch (error: unknown) {
                await retryIf504Status(error);
                return;
            }
            this.version = deletedData.version;

            for (const type of Object.keys(this.initialObjects)) {
                for (const object of deletedData[type]) {
                    delete this.initialObjects[type][object.id];
                }
            }
        }

        this.hash = this._getHash();
    }

    hasUnsavedChanges(): boolean {
        return this._getHash() !== this.hash;
    }
}
