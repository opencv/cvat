// Copyright (C) 2021-2022 Intel Corporation
// Copyright (C) 2023 CVAT.ai Corporation
//
// SPDX-License-Identifier: MIT

import React from 'react';
import consts from 'app-config';
import Location from './location';

interface Props {
    selectedRegion: any;
    onSelectRegion: any;
    internalCommonProps: any;
}

export default function GCSLocation(props: Props): JSX.Element {
    const {
        selectedRegion,
        onSelectRegion,
        internalCommonProps,
    } = props;
    return (
        <Location
            selectedRegion={selectedRegion}
            onSelectRegion={onSelectRegion}
            internalCommonProps={internalCommonProps}
            values={consts.DEFAULT_GOOGLE_CLOUD_STORAGE_LOCATIONS}
            name='location'
            label='Location'
            href='https://cloud.google.com/storage/docs/locations#available-locations'
        />
    );
}
