// Copyright (C) 2022 Intel Corporation
//
// SPDX-License-Identifier: MIT

import { Config } from 'react-awesome-query-builder';

export const config: Partial<Config> = {
    fields: {
        dimension: {
            label: 'Dimension',
            type: 'select',
            operators: ['select_equals'],
            valueSources: ['value'],
            fieldSettings: {
                listValues: [
                    { value: '2d', title: '2D' },
                    { value: '3d', title: '3D' },
                ],
            },
        },
        assignee: {
            label: 'Assignee',
            type: 'text', // todo: change to select
            valueSources: ['value'],
            fieldSettings: {
                // useAsyncSearch: true,
                // forceAsyncSearch: true,
                // async fetch does not work for now in this library for AntdConfig
                // but that issue was solved, see https://github.com/ukrbublik/react-awesome-query-builder/issues/616
                // waiting for a new release, alternative is to use material design, but it is not the best option too
                // asyncFetch: async (search: string | null) => {
                //     const users = await core.users.get({
                //         limit: 10,
                //         is_active: true,
                //         ...(search ? { search } : {}),
                //     });

                //     return {
                //         values: users.map((user: any) => ({
                //             value: user.username, title: user.username,
                //         })),
                //         hasMore: false,
                //     };
                // },
            },
        },
        updated_date: {
            label: 'Last updated',
            type: 'datetime',
            operators: ['between', 'greater', 'greater_or_equal', 'less', 'less_or_equal'],
        },
        id: {
            label: 'ID',
            type: 'number',
            operators: ['equal', 'between', 'greater', 'greater_or_equal', 'less', 'less_or_equal'],
            fieldSettings: { min: 0 },
            valueSources: ['value'],
        },
        task_name: {
            label: 'Task name',
            type: 'text',
            valueSources: ['value'],
            operators: ['like'],
        },
    },
};

export const localStorageRecentCapacity = 10;
export const localStorageRecentKeyword = 'recentlyAppliedTasksFilters';
export const predefinedFilterValues = {
    'Assigned to me': '{"and":[{"==":[{"var":"assignee"},"<username>"]}]}',
};
export const defaultEnabledFilters = [];
