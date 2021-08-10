// Copyright (C) 2021 Intel Corporation
//
// SPDX-License-Identifier: MIT

(() => {
    const PluginRegistry = require('./plugins');
    const serverProxy = require('./server-proxy');
    const { isBrowser, isNode } = require('browser-or-node');
    const { ArgumentError } = require('./exceptions');
    const { CloudStorageCredentialsType, CloudStorageProviderType } = require('./enums');

    /**
     * Class representing a cloud storage
     * @memberof module:API.cvat.classes
     */
    class CloudStorage {
        // TODO: add storage availability status (avaliable/unavaliable)
        constructor(initialData) {
            const data = {
                id: undefined,
                display_name: undefined,
                description: undefined,
                credentials_type: undefined,
                provider_type: undefined,
                resource: undefined,
                account_name: undefined,
                key: undefined,
                secret_key: undefined,
                session_token: undefined,
                specific_attributes: undefined,
                owner: undefined,
                created_date: undefined,
                updated_date: undefined,
                manifest_path: undefined,
            };

            for (const property in data) {
                if (Object.prototype.hasOwnProperty.call(data, property) && property in initialData) {
                    data[property] = initialData[property];
                }
            }

            Object.defineProperties(
                this,
                Object.freeze({
                    /**
                     * @name id
                     * @type {integer}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @readonly
                     * @instance
                     */
                    id: {
                        get: () => data.id,
                    },
                    /**
                     * Storage name
                     * @name displayName
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    displayName: {
                        get: () => data.display_name,
                        set: (value) => {
                            if (typeof value !== 'string') {
                                throw new ArgumentError(`Value must be string. ${typeof value} was found`);
                            } else if (!value.trim().length) {
                                throw new ArgumentError('Value must not be empty string');
                            }
                            data.display_name = value;
                        },
                    },
                    /**
                     * Storage description
                     * @name description
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    description: {
                        get: () => data.description,
                        set: (value) => {
                            if (typeof value !== 'string') {
                                throw new ArgumentError('Value must be string');
                            }
                            data.description = value;
                        },
                    },
                    /**
                     * Azure account name
                     * @name accountName
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    accountName: {
                        get: () => data.account_name,
                        set: (value) => {
                            if (typeof value === 'string') {
                                if (value.trim().length) {
                                    data.account_name = value;
                                } else {
                                    throw new ArgumentError('Value must not be empty');
                                }
                            } else {
                                throw new ArgumentError(`Value must be a string. ${typeof value} was found`);
                            }
                        },
                    },
                    /**
                     * AWS access key id
                     * @name accessKey
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    accessKey: {
                        get: () => data.key,
                        set: (value) => {
                            if (typeof value === 'string') {
                                if (value.trim().length) {
                                    data.key = value;
                                } else {
                                    throw new ArgumentError('Value must not be empty');
                                }
                            } else {
                                throw new ArgumentError(`Value must be a string. ${typeof value} was found`);
                            }
                        },
                    },
                    /**
                     * AWS secret key
                     * @name secretKey
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    secretKey: {
                        get: () => data.secret_key,
                        set: (value) => {
                            if (typeof value === 'string') {
                                if (value.trim().length) {
                                    data.secret_key = value;
                                } else {
                                    throw new ArgumentError('Value must not be empty');
                                }
                            } else {
                                throw new ArgumentError(`Value must be a string. ${typeof value} was found`);
                            }
                        },
                    },
                    /**
                     * Session token
                     * @name token
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    token: {
                        get: () => data.session_token,
                        set: (value) => {
                            if (typeof value === 'string') {
                                if (value.trim().length) {
                                    data.session_token = value;
                                } else {
                                    throw new ArgumentError('Value must not be empty');
                                }
                            } else {
                                throw new ArgumentError(`Value must be a string. ${typeof value} was found`);
                            }
                        },
                    },
                    /**
                     * Unique resource name
                     * @name resourceName
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    resourceName: {
                        get: () => data.resource,
                        set: (value) => {
                            if (typeof value !== 'string') {
                                throw new ArgumentError(`Value must be string. ${typeof value} was found`);
                            } else if (!value.trim().length) {
                                throw new ArgumentError('Value must not be empty');
                            }
                            data.resource = value;
                        },
                    },
                    /**
                     * @name manifestPath
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    manifestPath: {
                        get: () => data.manifest_path,
                        set: (value) => {
                            if (typeof value !== 'string') {
                                data.manifest_path = value;
                            } else {
                                throw new ArgumentError('Value must be a string');
                            }
                        },
                    },
                    /**
                     * @name providerType
                     * @type {module:API.cvat.enums.ProviderType}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    providerType: {
                        get: () => data.provider_type,
                        set: (key) => {
                            if (key !== undefined && !!CloudStorageProviderType[key]) {
                                data.provider_type = CloudStorageProviderType[key];
                            } else {
                                throw new ArgumentError('Value must be one CloudStorageProviderType keys');
                            }
                        },
                    },
                    /**
                     * @name credentialsType
                     * @type {module:API.cvat.enums.CloudStorageCredentialsType}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    credentialsType: {
                        get: () => data.credentials_type,
                        set: (key) => {
                            if (key !== undefined && !!CloudStorageCredentialsType[key]) {
                                data.credentials_type = CloudStorageCredentialsType[key];
                            } else {
                                throw new ArgumentError('Value must be one CloudStorageCredentialsType keys');
                            }
                        },
                    },
                    /**
                     * @name specificAttibutes
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @instance
                     * @throws {module:API.cvat.exceptions.ArgumentError}
                     */
                    specificAttibutes: {
                        get: () => data.specific_attributes,
                        set: (attributesValue) => {
                            if (typeof attributesValue === 'string') {
                                const attrValues = new URLSearchParams(
                                    Array.from(new URLSearchParams(attributesValue).entries()).filter(
                                        ([key, value]) => !!key && !!value,
                                    ),
                                ).toString();
                                if (!attrValues) {
                                    throw new ArgumentError('Value must match the key1=value1&key2=value2');
                                }
                                data.specific_attributes = attributesValue;
                            } else {
                                throw new ArgumentError('Value must be a string');
                            }
                        },
                    },
                    /**
                     * Instance of a user who has created the cloud storage
                     * @name owner
                     * @type {module:API.cvat.classes.User}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @readonly
                     * @instance
                     */
                    owner: {
                        get: () => data.owner,
                    },
                    /**
                     * @name createdDate
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @readonly
                     * @instance
                     */
                    createdDate: {
                        get: () => data.created_date,
                    },
                    /**
                     * @name updatedDate
                     * @type {string}
                     * @memberof module:API.cvat.classes.CloudStorage
                     * @readonly
                     * @instance
                     */
                    updatedDate: {
                        get: () => data.updated_date,
                    },
                }),
            );
        }

        /**
         * Method updates data of a created cloud storage or creates new cloud storage
         * @method save
         * @returns {module:API.cvat.classes.CloudStorage}
         * @memberof module:API.cvat.classes.CloudStorage
         * @readonly
         * @instance
         * @async
         * @throws {module:API.cvat.exceptions.ServerError}
         * @throws {module:API.cvat.exceptions.PluginError}
         */
        async save() {
            const result = await PluginRegistry.apiWrapper.call(this, CloudStorage.prototype.save);
            return result;
        }

        /**
         * Method deletes a cloud storage from a server
         * @method delete
         * @memberof module:API.cvat.classes.CloudStorage
         * @readonly
         * @instance
         * @async
         * @throws {module:API.cvat.exceptions.ServerError}
         * @throws {module:API.cvat.exceptions.PluginError}
         */
        async delete() {
            const result = await PluginRegistry.apiWrapper.call(this, CloudStorage.prototype.delete);
            return result;
        }

        /**
         * Method returns cloud storage content
         * @method getContent
         * @memberof module:API.cvat.classes.CloudStorage
         * @readonly
         * @instance
         * @async
         * @throws {module:API.cvat.exceptions.ServerError}
         * @throws {module:API.cvat.exceptions.PluginError}
         */
        async getContent() {
            const result = await PluginRegistry.apiWrapper.call(this, CloudStorage.prototype.getContent);
            return result;
        }

        /**
         * Method returns the cloud storage preview
         * @method getPreview
         * @memberof module:API.cvat.classes.CloudStorage
         * @readonly
         * @instance
         * @async
         * @throws {module:API.cvat.exceptions.ServerError}
         * @throws {module:API.cvat.exceptions.PluginError}
         */
        async getPreview() {
            const result = await PluginRegistry.apiWrapper.call(this, CloudStorage.prototype.getPreview);
            return result;
        }
    }

    CloudStorage.prototype.save.implementation = async function () {
        function prepareOptionalFields(cloudStorageInstance) {
            const data = {};
            if (cloudStorageInstance.description) {
                data.description = cloudStorageInstance.description;
            }

            if (cloudStorageInstance.accountName) {
                data.account_name = cloudStorageInstance.accountName;
            }

            if (cloudStorageInstance.accessKey) {
                data.key = cloudStorageInstance.accessKey;
            }

            if (cloudStorageInstance.secretKey) {
                data.secret_key = cloudStorageInstance.secretKey;
            }

            if (cloudStorageInstance.token) {
                data.session_token = cloudStorageInstance.token;
            }

            if (cloudStorageInstance.specificAttibutes) {
                data.specific_attributes = cloudStorageInstance.specificAttibutes;
            }
            return data;
        }
        // update
        if (typeof this.id !== 'undefined') {
            // providr_type and recource should not change;
            // send to the server only the values that have changed
            const initialData = {};
            if (this.displayName) {
                initialData.display_name = this.displayName;
            }
            if (this.credentialsType) {
                initialData.credentials_type = this.credentialsType;
            }

            const cloudStorageData = {
                ...initialData,
                ...prepareOptionalFields(this),
            };

            await serverProxy.cloudStorages.update(this.id, cloudStorageData);
            return this;
        }

        // create
        const initialData = {
            display_name: this.displayName,
            credentials_type: this.credentialsType,
            provider_type: this.providerType,
            resource: this.resourceName,
        };

        const cloudStorageData = {
            ...initialData,
            ...prepareOptionalFields(this),
        };

        const cloudStorage = await serverProxy.cloudStorages.create(cloudStorageData);
        return new CloudStorage(cloudStorage);
    };

    CloudStorage.prototype.delete.implementation = async function () {
        const result = await serverProxy.cloudStorages.delete(this.id);
        return result;
    };

    CloudStorage.prototype.getContent.implementation = async function () {
        const result = await serverProxy.cloudStorages.getContent(this.id, this.manifestPath);
        return result;
    };

    CloudStorage.prototype.getPreview.implementation = async function getPreview() {
        return new Promise((resolve, reject) => {
            serverProxy.cloudStorages
                .getPreview(this.id)
                .then((result) => {
                    if (isNode) {
                        resolve(global.Buffer.from(result, 'binary').toString('base64'));
                    } else if (isBrowser) {
                        const reader = new FileReader();
                        reader.onload = () => {
                            resolve(reader.result);
                        };
                        reader.readAsDataURL(result);
                    }
                })
                .catch((error) => {
                    reject(error);
                });
        });
    };

    module.exports = {
        CloudStorage,
    };
})();
