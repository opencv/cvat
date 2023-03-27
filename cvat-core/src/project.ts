// Copyright (C) 2019-2022 Intel Corporation
// Copyright (C) 2022-2023 CVAT.ai Corporation
//
// SPDX-License-Identifier: MIT

import _ from 'lodash';
import { DimensionType, ProjectStatus, StorageLocation } from './enums';
import { Storage } from './storage';
import { SerializedLabel, SerializedProject } from './server-response-types';
import PluginRegistry from './plugins';
import { ArgumentError } from './exceptions';
import { Label } from './labels';
import User from './user';
import { FieldUpdateTrigger } from './common';

export default class Project {
    public readonly id: number;
    public name: string;
    public assignee: User;
    public bugTracker: string;
    public readonly status: ProjectStatus;
    public readonly organization: string | null;
    public readonly owner: User;
    public readonly createdDate: string;
    public readonly updatedDate: string;
    public readonly taskSubsets: string[];
    public readonly dimension: DimensionType;
    public readonly sourceStorage: Storage;
    public readonly targetStorage: Storage;
    public labels: Label[];
    public annotations: {
        exportDataset: CallableFunction;
        importDataset: CallableFunction;
    }

    constructor(initialData: SerializedProject & { labels?: SerializedLabel[] }) {
        const data = {
            id: undefined,
            name: undefined,
            status: undefined,
            assignee: undefined,
            organization: undefined,
            owner: undefined,
            bug_tracker: undefined,
            created_date: undefined,
            updated_date: undefined,
            task_subsets: undefined,
            dimension: undefined,
            source_storage: undefined,
            target_storage: undefined,
            labels: undefined,
        };

        const updateTrigger = new FieldUpdateTrigger();

        for (const property in data) {
            if (Object.prototype.hasOwnProperty.call(data, property) && property in initialData) {
                data[property] = initialData[property];
            }
        }

        data.labels = [];

        if (Array.isArray(initialData.labels)) {
            data.labels = initialData.labels
                .map((labelData) => new Label(labelData)).filter((label) => !label.hasParent);
        }

        Object.defineProperties(
            this,
            Object.freeze({
                id: {
                    get: () => data.id,
                },
                name: {
                    get: () => data.name,
                    set: (value) => {
                        if (!value.trim().length) {
                            throw new ArgumentError('Value must not be empty');
                        }
                        data.name = value;
                        updateTrigger.update('name');
                    },
                },
                status: {
                    get: () => data.status,
                },
                assignee: {
                    get: () => data.assignee,
                    set: (assignee) => {
                        if (assignee !== null && !(assignee instanceof User)) {
                            throw new ArgumentError('Value must be a user instance');
                        }
                        data.assignee = assignee;
                        updateTrigger.update('assignee');
                    },
                },
                owner: {
                    get: () => data.owner,
                },
                organization: {
                    get: () => data.organization,
                },
                bugTracker: {
                    get: () => data.bug_tracker,
                    set: (tracker) => {
                        data.bug_tracker = tracker;
                        updateTrigger.update('bugTracker');
                    },
                },
                createdDate: {
                    get: () => data.created_date,
                },
                updatedDate: {
                    get: () => data.updated_date,
                },
                dimension: {
                    get: () => data.dimension,
                },
                labels: {
                    get: () => [...data.labels],
                    set: (labels: Label[]) => {
                        if (!Array.isArray(labels)) {
                            throw new ArgumentError('Value must be an array of Labels');
                        }

                        if (!Array.isArray(labels) || labels.some((label) => !(label instanceof Label))) {
                            throw new ArgumentError(
                                'Each array value must be an instance of Label',
                            );
                        }

                        const oldIDs = data.labels.map((_label) => _label.id);
                        const newIDs = labels.map((_label) => _label.id);

                        // find any deleted labels and mark them
                        data.labels.filter((_label) => !newIDs.includes(_label.id))
                            .forEach((_label) => {
                                // for deleted labels let's specify that they are deleted
                                _label.deleted = true;
                            });

                        // find any patched labels and mark them
                        labels.forEach((_label) => {
                            const { id } = _label;
                            if (oldIDs.includes(id)) {
                                const oldLabelIndex = data.labels.findIndex((__label) => __label.id === id);
                                if (oldLabelIndex !== -1) {
                                    // replace current label by the patched one
                                    const oldLabel = data.labels[oldLabelIndex];
                                    data.labels.splice(oldLabelIndex, 1, _label);
                                    if (!_.isEqual(_label.toJSON(), oldLabel.toJSON())) {
                                        _label.patched = true;
                                    }
                                }
                            }
                        });

                        // find new labels to append them to the end
                        const newLabels = labels.filter((_label) => !Number.isInteger(_label.id));
                        data.labels = [...data.labels, ...newLabels];

                        updateTrigger.update('labels');
                    },
                },
                subsets: {
                    get: () => [...data.task_subsets],
                },
                sourceStorage: {
                    get: () => (
                        new Storage({
                            location: data.source_storage?.location || StorageLocation.LOCAL,
                            cloudStorageId: data.source_storage?.cloud_storage_id,
                        })
                    ),
                },
                targetStorage: {
                    get: () => (
                        new Storage({
                            location: data.target_storage?.location || StorageLocation.LOCAL,
                            cloudStorageId: data.target_storage?.cloud_storage_id,
                        })
                    ),
                },
                _internalData: {
                    get: () => data,
                },
                _updateTrigger: {
                    get: () => updateTrigger,
                },
            }),
        );

        // When we call a function, for example: project.annotations.get()
        // In the method get we lose the project context
        // So, we need to bind it
        this.annotations = {
            exportDataset: Object.getPrototypeOf(this).annotations.exportDataset.bind(this),
            importDataset: Object.getPrototypeOf(this).annotations.importDataset.bind(this),
        };
    }

    async preview() {
        const result = await PluginRegistry.apiWrapper.call(this, Project.prototype.preview);
        return result;
    }

    async save() {
        const result = await PluginRegistry.apiWrapper.call(this, Project.prototype.save);
        return result;
    }

    async delete() {
        const result = await PluginRegistry.apiWrapper.call(this, Project.prototype.delete);
        return result;
    }

    async backup(targetStorage: Storage, useDefaultSettings: boolean, fileName?: string) {
        const result = await PluginRegistry.apiWrapper.call(
            this,
            Project.prototype.backup,
            targetStorage,
            useDefaultSettings,
            fileName,
        );
        return result;
    }

    static async restore(storage: Storage, file: File | string) {
        const result = await PluginRegistry.apiWrapper.call(this, Project.restore, storage, file);
        return result;
    }
}

Object.defineProperties(
    Project.prototype,
    Object.freeze({
        annotations: Object.freeze({
            value: {
                async exportDataset(
                    format: string,
                    saveImages: boolean,
                    useDefaultSettings: boolean,
                    targetStorage: Storage,
                    customName?: string,
                ) {
                    const result = await PluginRegistry.apiWrapper.call(
                        this,
                        Project.prototype.annotations.exportDataset,
                        format,
                        saveImages,
                        useDefaultSettings,
                        targetStorage,
                        customName,
                    );
                    return result;
                },
                async importDataset(
                    format: string,
                    useDefaultSettings: boolean,
                    sourceStorage: Storage,
                    file: File | string,
                    options?: {
                        convMaskToPoly?: boolean,
                        updateStatusCallback?: (s: string, n: number) => void,
                    },
                ) {
                    const result = await PluginRegistry.apiWrapper.call(
                        this,
                        Project.prototype.annotations.importDataset,
                        format,
                        useDefaultSettings,
                        sourceStorage,
                        file,
                        options,
                    );
                    return result;
                },
            },
            writable: true,
        }),
    }),
);
