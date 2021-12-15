// Copyright (C) 2020-2021 Intel Corporation
//
// SPDX-License-Identifier: MIT

import React from 'react';
import { EditOutlined, CloseOutlined } from '@ant-design/icons';
import Text from 'antd/lib/typography/Text';

import CVATTooltip from 'components/common/cvat-tooltip';
import consts from 'consts';
import { Label } from './common';

interface SkeletonViewerItemProps {
    label: Label;
    color: string;
    onUpdate: (label: Label) => void;
    onDelete: (label: Label) => void;
}

export default function SkeletonViewerItem(props: SkeletonViewerItemProps): JSX.Element {
    const {
        color, label, onUpdate, onDelete,
    } = props;

    return (
        <div style={{ background: color || consts.NEW_LABEL_COLOR }} className='cvat-constructor-viewer-item'>
            <Text>{label.name}</Text>
            <CVATTooltip title='Update attributes'>
                <span
                    role='button'
                    tabIndex={0}
                    onClick={(): void => onUpdate(label)}
                    onKeyPress={(): boolean => false}
                >
                    <EditOutlined />
                </span>
            </CVATTooltip>

            <CVATTooltip title='Delete label'>
                <span
                    role='button'
                    tabIndex={0}
                    onClick={(): void => onDelete(label)}
                    onKeyPress={(): boolean => false}
                >
                    <CloseOutlined />
                </span>
            </CVATTooltip>
        </div>
    );
}
