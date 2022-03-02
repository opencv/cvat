// Copyright (C) 2020-2022 Intel Corporation
//
// SPDX-License-Identifier: MIT

import React, { useState } from 'react';
import { useHistory } from 'react-router';
import { Row, Col } from 'antd/lib/grid';
import Dropdown from 'antd/lib/dropdown';
import { PlusOutlined, UploadOutlined, LoadingOutlined } from '@ant-design/icons';
import Button from 'antd/lib/button';
import Upload from 'antd/lib/upload';
import Input from 'antd/lib/input';

import { SortingComponent, ResourceFilterHOC } from 'components/resource-sorting-filtering';
import { TasksQuery } from 'reducers/interfaces';

import {
    localStorageRecentKeyword, localStorageRecentCapacity,
    predefinedFilterValues, defaultEnabledFilters, config,
} from './tasks-filter-configuration';

const FilteringComponent = ResourceFilterHOC(
    config, localStorageRecentKeyword, localStorageRecentCapacity,
    predefinedFilterValues, defaultEnabledFilters,
);

interface VisibleTopBarProps {
    onImportTask(file: File): void;
    onApplyFilter(filter: string | null): void;
    onApplySorting(sorting: string | null): void;
    onApplySearch(search: string | null): void;
    query: TasksQuery;
    importing: boolean;
}

const defaultVisibility: {
    predefined: boolean;
    recent: boolean;
    builder: boolean;
    sorting: boolean;
} = {
    predefined: false,
    recent: false,
    builder: false,
    sorting: false,
};

export default function TopBarComponent(props: VisibleTopBarProps): JSX.Element {
    const {
        importing, query, onApplyFilter, onApplySorting, onApplySearch, onImportTask,
    } = props;
    const [visibility, setVisibility] = useState<typeof defaultVisibility>(defaultVisibility);
    const history = useHistory();

    return (
        <Row className='cvat-tasks-page-top-bar' justify='center' align='middle'>
            <Col md={22} lg={18} xl={16} xxl={14}>
                <div className='cvat-tasks-page-filters-wrapper'>
                    <Input.Search
                        enterButton
                        onSearch={(phrase: string) => {
                            onApplySearch(phrase);
                        }}
                        defaultValue={query.search || ''}
                        className='cvat-tasks-page-search-bar'
                        placeholder='Search ..'
                    />
                    <div>
                        <SortingComponent
                            visible={visibility.sorting}
                            onVisibleChange={(visible: boolean) => (
                                setVisibility({ ...defaultVisibility, sorting: visible })
                            )}
                            defaultFields={query.sort?.split(',') || ['-ID']}
                            sortingFields={['ID', 'Owner', 'Status', 'Assignee', 'Updated date', 'Subset', 'Mode', 'Dimension', 'Project ID', 'Name', 'Project name']}
                            onApplySorting={onApplySorting}
                        />
                        <FilteringComponent
                            predefinedVisible={visibility.predefined}
                            builderVisible={visibility.builder}
                            recentVisible={visibility.recent}
                            onPredefinedVisibleChange={(visible: boolean) => (
                                setVisibility({ ...defaultVisibility, predefined: visible })
                            )}
                            onBuilderVisibleChange={(visible: boolean) => (
                                setVisibility({ ...defaultVisibility, builder: visible })
                            )}
                            onRecentVisibleChange={(visible: boolean) => (
                                setVisibility({ ...defaultVisibility, builder: visibility.builder, recent: visible })
                            )}
                            onApplyFilter={onApplyFilter}
                        />
                    </div>
                </div>
                <div>
                    <Dropdown
                        trigger={['click']}
                        destroyPopupOnHide
                        overlay={(
                            <div className='cvat-tasks-page-control-buttons-wrapper'>
                                <Button
                                    className='cvat-create-task-button'
                                    type='primary'
                                    onClick={(): void => history.push('/tasks/create')}
                                    icon={<PlusOutlined />}
                                >
                                    Create a new task
                                </Button>
                                <Upload
                                    accept='.zip'
                                    multiple={false}
                                    showUploadList={false}
                                    beforeUpload={(file: File): boolean => {
                                        onImportTask(file);
                                        return false;
                                    }}
                                    className='cvat-import-task'
                                >
                                    <Button
                                        className='cvat-import-task-button'
                                        type='primary'
                                        disabled={importing}
                                        icon={<UploadOutlined />}
                                    >
                                        Create from backup
                                        {importing && <LoadingOutlined />}
                                    </Button>
                                </Upload>
                            </div>
                        )}
                    >
                        <Button type='primary' icon={<PlusOutlined />} />
                    </Dropdown>
                </div>
            </Col>
        </Row>
    );
}
