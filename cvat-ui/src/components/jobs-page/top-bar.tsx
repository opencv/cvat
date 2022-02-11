// Copyright (C) 2022 Intel Corporation
//
// SPDX-License-Identifier: MIT

import React from 'react';
import { Col, Row } from 'antd/lib/grid';
import Text from 'antd/lib/typography/Text';
import FilteringComponent from './filtering';

interface Props {
    onApplyFilter(filter: string | null): void;
}

function TopBarComponent(props: Props): JSX.Element {
    const { onApplyFilter } = props;
    return (
        <Row className='cvat-jobs-page-top-bar' justify='center' align='middle'>
            <Col md={22} lg={18} xl={16} xxl={16}>
                <Row justify='space-between' align='bottom'>
                    <Col>
                        <Text className='cvat-title'>Jobs</Text>
                    </Col>
                    <FilteringComponent onApplyFilter={onApplyFilter} />
                </Row>
            </Col>
        </Row>
    );
}

export default React.memo(TopBarComponent);
