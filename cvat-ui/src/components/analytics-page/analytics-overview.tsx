// Copyright (C) 2023 CVAT.ai Corporation
//
// SPDX-License-Identifier: MIT

import './styles.scss';

import React from 'react';
import moment from 'moment';
import GridLayout from 'react-grid-layout';
import Text from 'antd/lib/typography/Text';
import Select from 'antd/lib/select';
import { AnalyticsReport, AnalyticsEntryViewType } from 'cvat-core-wrapper';
import { Col, Row } from 'antd/lib/grid';
import HistogramView from './views/histogram-view';
import AnalyticsCard from './views/analytics-card';

export enum DateIntervals {
    LAST_WEEK = 'Last 7 days',
    LAST_MONTH = 'Last 30 days',
    LAST_QUARTER = 'Last 90 days',
    LAST_YEAR = 'Last 365 days',
}

interface Props {
    report: AnalyticsReport | null;
    onTimePeriodChange: (val: DateIntervals) => void;
}

const colors = [
    'rgba(255, 99, 132, 0.5)',
    'rgba(53, 162, 235, 0.5)',
    'rgba(170, 83, 85, 0.5)',
    'rgba(44, 70, 94, 0.5)',
    'rgba(28, 66, 98, 0.5)',
];

function AnalyticsOverview(props: Props): JSX.Element | null {
    const { report, onTimePeriodChange } = props;

    // TODO make it more expressive
    if (!report) return null;
    const layout: any = [];
    let x = 0;
    let y = 0;
    const views = Object.entries(report.statistics).map(([name, entry]) => {
        switch (entry.defaultView) {
            case AnalyticsEntryViewType.NUMERIC: {
                layout.push({
                    i: name,
                    w: 2,
                    h: 1,
                    x,
                    y,
                });
                if (x !== 4) {
                    x += 2;
                } else {
                    x = 0;
                    y += 1;
                }
                return ({
                    view: (<AnalyticsCard
                        title={entry.title}
                        value={entry.dataseries[Object.keys(entry.dataseries)[0]][0].value as number}
                        size={12}
                        bottomElement={<Text>{entry.description}</Text>}
                        key={name}
                    />),
                    key: name,
                });
            }
            case AnalyticsEntryViewType.HISTOGRAM: {
                const firstDataset = Object.keys(entry.dataseries)[0];
                const dateLabels = entry.dataseries[firstDataset].map((dataEntry) => (
                    moment.utc(dataEntry.datetime).local().format('YYYY-MM-DD HH:mm:ss')
                ));

                let colorIndex = -1;
                const datasets = Object.entries(entry.dataseries).map(([key, series]) => {
                    let label = key.split('_').join(' ');
                    label = label.charAt(0).toUpperCase() + label.slice(1);

                    const data: number[] = series.map((s) => {
                        if (Number.isInteger(s.value)) {
                            return s.value as number;
                        }

                        if (typeof s.value === 'object') {
                            return Object.keys(s.value).reduce((acc, _key) => acc + s.value[_key], 0);
                        }

                        return 0;
                    });

                    colorIndex = colorIndex >= colors.length - 1 ? 0 : colorIndex + 1;
                    return {
                        label,
                        data,
                        backgroundColor: colors[colorIndex],
                    };
                });
                layout.push({
                    i: name,
                    h: 1,
                    w: 2,
                    x,
                    y,
                });
                if (x !== 2) {
                    x += 2;
                } else {
                    x = 0;
                    y += 1;
                }
                return ({
                    view: (
                        <HistogramView
                            datasets={datasets}
                            labels={dateLabels}
                            title={entry.title}
                            size={12}
                            key={name}
                        />
                    ),
                    key: name,
                });
            }
            default: {
                throw Error(`View type ${entry.defaultView} is not supported`);
            }
        }
    });
    console.log(layout);
    return (
        <div className='cvat-analytics-overview'>
            <Row justify='end'>
                <Col>
                    <Select
                        placeholder='Select time period'
                        defaultValue={DateIntervals.LAST_WEEK}
                        onChange={onTimePeriodChange}
                        options={[
                            {
                                value: DateIntervals.LAST_WEEK,
                                label: DateIntervals.LAST_WEEK,
                            },
                            {
                                value: DateIntervals.LAST_MONTH,
                                label: DateIntervals.LAST_MONTH,
                            },
                            {
                                value: DateIntervals.LAST_QUARTER,
                                label: DateIntervals.LAST_QUARTER,
                            },
                            {
                                value: DateIntervals.LAST_YEAR,
                                label: DateIntervals.LAST_YEAR,
                            },
                        ]}
                    />
                </Col>
            </Row>
            <GridLayout
                className='layout'
                layout={layout}
                cols={4}
                rowHeight={200}
                width={1000}
            >

                { views.map(({ view, key }): JSX.Element => (
                    <div
                        key={key}
                    >
                        { view }
                    </div>
                )) }
            </GridLayout>
        </div>
    );
}

export default React.memo(AnalyticsOverview);
