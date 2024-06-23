// Copyright (C) 2023 CVAT.ai Corporation
//
// SPDX-License-Identifier: MIT

import React from 'react';
import { useSelector } from 'react-redux';
import Icon from '@ant-design/icons';
import Button from 'antd/lib/button';
import { SaveIcon } from 'icons';
import GlobalHotKeys from 'utils/mousetrap-react';
import CVATTooltip from 'components/common/cvat-tooltip';
import { CombinedState } from 'reducers';
import { ShortcutScope } from 'utils/enums';
import { useRegisterShortcuts } from 'utils/hooks';

const componentShortcuts = {
    SAVE_JOB: {
        name: 'Save the job',
        description: 'Send all changes of annotations to the server',
        sequences: ['ctrl+s'],
        scope: ShortcutScope.ALL,
    },
};

useRegisterShortcuts(componentShortcuts);

const storage = {
    SAVE_ANNOTATION_BUTTON: (props: any & {
        isSaving: boolean;
    }) => {
        const keyMap = useSelector((state: CombinedState) => state.shortcuts.keyMap);
        const normKeyMap = useSelector((state: CombinedState) => state.shortcuts.normalizedKeyMap);
        const { isSaving, shortcut, ...rest } = props;

        const subKeyMap = {
            SAVE_JOB: keyMap.SAVE_JOB,
        };

        const handlers = {
            SAVE_JOB: (event: KeyboardEvent | undefined) => {
                const { onClick } = props;
                if (event) event.preventDefault();
                if (onClick) onClick();
            },
        };

        return (
            <>
                <GlobalHotKeys keyMap={subKeyMap} handlers={handlers} />
                <CVATTooltip overlay={`Save current changes ${normKeyMap.SAVE_JOB}`}>
                    <Button
                        {...rest}
                    >
                        <Icon component={SaveIcon} />
                        {isSaving ? 'Saving...' : 'Save'}
                    </Button>
                </CVATTooltip>
            </>
        );
    },
};

export default storage;
