// Copyright (C) 2022 CVAT.ai Corporation
//
// SPDX-License-Identifier: MIT

// import './styles.scss';
import React, { useEffect, useState } from 'react';
import Form from 'antd/lib/form';
import notification from 'antd/lib/notification';
import AutoComplete from 'antd/lib/auto-complete';
import Input from 'antd/lib/input';
import { debounce } from 'lodash';

import Select from 'antd/lib/select';
import getCore from 'cvat-core-wrapper';
import { CloudStorage } from 'reducers/interfaces';
import { AzureProvider, GoogleCloudProvider, S3Provider } from 'icons';
import { ProviderType } from 'utils/enums';


export interface Props {
    searchPhrase: string;
    cloudStorage: CloudStorage | null;
    name?: string[];
    setSearchPhrase: (searchPhrase: string) => void;
    onSelectCloudStorage: (cloudStorageId: number | null) => void;

}
const { Option } = Select;

async function searchCloudStorages(filter: Record<string, string>): Promise<CloudStorage[]> {
    try {
        const data = await getCore().cloudStorages.get(filter);
        return data;
    } catch (error) {
        notification.error({
            message: 'Could not fetch a list of cloud storages',
            description: error.toString(),
        });
    }

    return [];
}

const searchCloudStoragesWrapper = debounce((phrase, setList) => {
    const filter = {
        filter: JSON.stringify({
            and: [{
                '==': [{ var: 'display_name' }, phrase],
            }],
        }),
    };
    searchCloudStorages(filter).then((list) => {
        setList(list);
    });
}, 500);

function SelectCloudStorage(props: Props): JSX.Element {
    const { searchPhrase, cloudStorage, name, setSearchPhrase, onSelectCloudStorage } = props;
    const [initialList, setInitialList] = useState<CloudStorage[]>([]);
    const [list, setList] = useState<CloudStorage[]>([]);

    useEffect(() => {
        searchCloudStorages({}).then((data) => {
            setInitialList(data);
            if (!list.length) {
                setList(data);
            }
        });
    }, []);

    useEffect(() => {
        if (!searchPhrase) {
            setList(initialList);
        } else {
            searchCloudStoragesWrapper(searchPhrase, setList);
        }
    }, [searchPhrase, initialList]);

    const onBlur = (): void => {
        if (!searchPhrase && cloudStorage) {
            onSelectCloudStorage(null);
        } else if (searchPhrase) {
            const potentialStorages = list.filter((_cloudStorage) => _cloudStorage.displayName.includes(searchPhrase));
            if (potentialStorages.length === 1) {
                const potentialStorage = potentialStorages[0];
                setSearchPhrase(potentialStorage.displayName);
                // eslint-disable-next-line prefer-destructuring
                potentialStorage.manifestPath = potentialStorage.manifests[0];
                onSelectCloudStorage(potentialStorage);
            }
        }
    };


    return (
        <Form.Item
            label='Select cloud storage'
            name={name || 'cloudStorageSelect'}
            rules={[{ required: true, message: 'Please, specify a cloud storage' }]}
            valuePropName='label'
        >
            <AutoComplete
                onBlur={onBlur}
                value={searchPhrase}
                placeholder='Search...'
                showSearch
                onSearch={(phrase: string) => {
                    setSearchPhrase(phrase);
                }}
                options={list.map((_cloudStorage) => ({
                    value: _cloudStorage.id.toString(),
                    label: (
                        <span
                            className='cvat-cloud-storage-select-provider'
                        >
                            {_cloudStorage.providerType === ProviderType.AWS_S3_BUCKET && <S3Provider />}
                            {_cloudStorage.providerType === ProviderType.AZURE_CONTAINER && <AzureProvider />}
                            {
                                _cloudStorage.providerType === ProviderType.GOOGLE_CLOUD_STORAGE &&
                                <GoogleCloudProvider />
                            }
                            {_cloudStorage.displayName}
                        </span>
                    ),
                }))}
                onSelect={(value: string) => {
                    const selectedCloudStorage =
                    list.filter((_cloudStorage: CloudStorage) => _cloudStorage.id === +value)[0] || null;
                    // eslint-disable-next-line prefer-destructuring
                    selectedCloudStorage.manifestPath = selectedCloudStorage.manifests[0];
                    onSelectCloudStorage(selectedCloudStorage);
                    setSearchPhrase(selectedCloudStorage?.displayName || '');
                }}
                allowClear
            >
                <Input />
            </AutoComplete>
        </Form.Item>
    );

}

export default React.memo(SelectCloudStorage);