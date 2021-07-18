// Copyright (C) 2021 Intel Corporation
//
// SPDX-License-Identifier: MIT

import './styles.scss';
import React, { useEffect, useState } from 'react';
import Form from 'antd/lib/form';
import notification from 'antd/lib/notification';
import AutoComplete from 'antd/lib/auto-complete';
import Input from 'antd/lib/input';
import { debounce } from 'lodash';

import getCore from 'cvat-core-wrapper';
import { CloudStorage } from 'reducers/interfaces';
import { AzureProvider, S3Provider } from 'icons';
import { ProviderType } from 'utils/enums';
import CloudStorageFiles from './cloud-storages-files';

interface Props {
    formRef: any;
    cloudStorage: CloudStorage | null;
    onSelectFiles: (files: string[]) => void;
    onSelectCloudStorage: (cloudStorageId: number | null) => void;
    // resetState: boolean;
}

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
    const filter = { displayName: phrase };
    searchCloudStorages(filter).then((list) => {
        setList(list);
    });
}, 500);

export default function CloudStorageTab(props: Props): JSX.Element {
    const [initialList, setInitialList] = useState<CloudStorage[]>([]);
    const [list, setList] = useState<CloudStorage[]>([]);
    const [searchPhrase, setSearchPhrase] = useState<string>('');
    const {
        formRef, cloudStorage, onSelectFiles, onSelectCloudStorage, // resetState,
    } = props;

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
                setSearchPhrase(potentialStorages[0].displayName);
                onSelectCloudStorage(potentialStorages[0]);
            }
        }
    };

    // todo: clear this form after the task was created
    return (
        <Form ref={formRef} className='cvat-create-task-page-cloud-storages-tab-form' layout='vertical'>
            <Form.Item
                label='Select cloud storage'
                name='cloudStorageSelect'
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
                        label:
                            <>
                                {(_cloudStorage.providerType === ProviderType.AWS_S3_BUCKET) ?
                                    <S3Provider /> :
                                    <AzureProvider />}
                                {_cloudStorage.displayName}
                            </>,
                    }))}
                    onSelect={(value: string) => {
                        const selectedCloudStorage =
                            list.filter((_cloudStorage: CloudStorage) => _cloudStorage.id === +value)[0] || null;
                        onSelectCloudStorage(selectedCloudStorage);
                        setSearchPhrase(selectedCloudStorage?.displayName || '');
                    }}
                >
                    <Input />
                </AutoComplete>
            </Form.Item>

            {cloudStorage ? (
                <Form.Item
                    label='Files'
                    name='cloudStorageFiles'
                    rules={[{ required: true, message: 'Please, select a files' }]}
                >
                    <CloudStorageFiles
                        cloudStorage={cloudStorage}
                        onSelectFiles={onSelectFiles}
                        // resetState={resetState}
                    />
                </Form.Item>
            ) : null}
        </Form>
    );
}
