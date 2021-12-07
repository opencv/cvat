// Copyright (C) 2020-2021 Intel Corporation
//
// SPDX-License-Identifier: MIT

import React from 'react';
import { withRouter, RouteComponentProps } from 'react-router';

import Menu from 'antd/lib/menu';
import Modal from 'antd/lib/modal';
import Text from 'antd/lib/typography/Text';
import InputNumber from 'antd/lib/input-number';
import Checkbox from 'antd/lib/checkbox';
import Collapse from 'antd/lib/collapse';

// eslint-disable-next-line import/no-extraneous-dependencies
import { MenuInfo } from 'rc-menu/lib/interface';

import CVATTooltip from 'components/common/cvat-tooltip';
import LoadSubmenu from 'components/actions-menu/load-submenu';
import getCore from 'cvat-core-wrapper';
import { JobStage } from 'reducers/interfaces';

const core = getCore();

interface Props {
    taskMode: string;
    loaders: any[];
    dumpers: any[];
    loadActivity: string | null;
    jobInstance: any;
    onClickMenu(params: MenuInfo): void;
    onUploadAnnotations(format: string, file: File): void;
    stopFrame: number;
    removeAnnotations(startnumber: number, endnumber: number, delTrackKeyframesOnly:boolean): void;
    setForceExitAnnotationFlag(forceExit: boolean): void;
    saveAnnotations(jobInstance: any, afterSave?: () => void): void;
}

export enum Actions {
    LOAD_JOB_ANNO = 'load_job_anno',
    EXPORT_TASK_DATASET = 'export_task_dataset',
    REMOVE_ANNO = 'remove_anno',
    OPEN_TASK = 'open_task',
    START_JOB = 'start_job',
    SUBMIT_ANNOTATIONS = 'submit_annotations',
    SUBMIT_REVIEW = 'submit_review',
    FINISH_JOB = 'finish_job',
    RENEW_JOB = 'renew_job',
}

function AnnotationMenuComponent(props: Props & RouteComponentProps): JSX.Element {
    const {
        loaders,
        loadActivity,
        jobInstance,
        stopFrame,
        history,
        onClickMenu,
        onUploadAnnotations,
        removeAnnotations,
        setForceExitAnnotationFlag,
        saveAnnotations,
    } = props;

    const jobStage = jobInstance.stage;
    const jobState = jobInstance.state;
    const taskID = jobInstance.taskId;

    function onClickMenuWrapper(params: MenuInfo): void {
        function checkUnsavedChanges(_params: MenuInfo): void {
            if (jobInstance.annotations.hasUnsavedChanges()) {
                Modal.confirm({
                    title: 'The job has unsaved annotations',
                    content: 'Would you like to save changes before continue?',
                    className: 'cvat-modal-content-save-job',
                    okButtonProps: {
                        children: 'Save',
                    },
                    cancelButtonProps: {
                        children: 'No',
                    },
                    onOk: () => {
                        saveAnnotations(jobInstance, () => onClickMenu(_params));
                    },
                    onCancel: () => {
                        // do not ask leave confirmation
                        setForceExitAnnotationFlag(true);
                        setTimeout(() => {
                            onClickMenu(_params);
                        });
                    },
                });
            } else {
                onClickMenu(_params);
            }
        }

        if (params.key === Actions.REMOVE_ANNO) {
            let removeFrom: number;
            let removeUpTo: number;
            let removeOnlyKeyframes = false;
            const { Panel } = Collapse;
            Modal.confirm({
                title: 'Remove Annotations',
                content: (
                    <div>
                        <Text>You are going to remove the annotations from the client. </Text>
                        <Text>It will stay on the server till you save the job. Continue?</Text>
                        <br />
                        <br />
                        <Collapse bordered={false}>
                            <Panel header={<Text>Select Range</Text>} key={1}>
                                <Text>From: </Text>
                                <InputNumber
                                    min={0}
                                    max={stopFrame}
                                    onChange={(value) => {
                                        removeFrom = value;
                                    }}
                                />
                                <Text>  To: </Text>
                                <InputNumber
                                    min={0}
                                    max={stopFrame}
                                    onChange={(value) => { removeUpTo = value; }}
                                />
                                <CVATTooltip title='Applicable only for annotations in range'>
                                    <br />
                                    <br />
                                    <Checkbox
                                        onChange={(check) => {
                                            removeOnlyKeyframes = check.target.checked;
                                        }}
                                    >
                                        Delete only keyframes for tracks
                                    </Checkbox>
                                </CVATTooltip>
                            </Panel>
                        </Collapse>
                    </div>
                ),
                className: 'cvat-modal-confirm-remove-annotation',
                onOk: () => {
                    removeAnnotations(removeFrom, removeUpTo, removeOnlyKeyframes);
                },
                okButtonProps: {
                    type: 'primary',
                    danger: true,
                },
                okText: 'Delete',
            });
        } else if (params.key === Actions.SUBMIT_ANNOTATIONS) {
            Modal.confirm({
                title: 'Do you want to submit annotations?',
                content: 'Job state will be switched to "completed". Continue?',
                okText: 'Continue',
                cancelText: 'Cancel',
                className: 'cvat-modal-content-submit-annotations',
                onOk: () => {
                    checkUnsavedChanges(params);
                },
            });
        } else if (params.key === Actions.START_JOB) {
            Modal.confirm({
                title: `Do you want to start ${jobInstance.stage} of this job?`,
                content: 'State will be switched to "in progress". Continue?',
                okText: 'Continue',
                cancelText: 'Cancel',
                className: 'cvat-modal-content-start-job-modal',
                onOk: () => {
                    checkUnsavedChanges(params);
                },
            });
        } else if (params.key === Actions.FINISH_JOB) {
            Modal.confirm({
                title: 'The job stage is going to be switched',
                content: 'Stage will be changed to "acceptance". Would you like to continue?',
                okText: 'Continue',
                cancelText: 'Cancel',
                className: 'cvat-modal-content-finish-job',
                onOk: () => {
                    checkUnsavedChanges(params);
                },
            });
        } else if (params.key === Actions.RENEW_JOB) {
            Modal.confirm({
                title: 'Do you want to renew the job?',
                content: 'Stage will be set to "in progress", state will be set to "annotation". Would you like to continue?',
                okText: 'Continue',
                cancelText: 'Cancel',
                className: 'cvat-modal-content-renew-job',
                onOk: () => {
                    onClickMenu(params);
                },
            });
        } else {
            onClickMenu(params);
        }
    }

    return (
        <Menu onClick={(params: MenuInfo) => onClickMenuWrapper(params)} className='cvat-annotation-menu' selectable={false}>
            {LoadSubmenu({
                loaders,
                loadActivity,
                onFileUpload: (format: string, file: File): void => {
                    if (file) {
                        Modal.confirm({
                            title: 'Current annotation will be lost',
                            content: 'You are going to upload new annotations to this job. Continue?',
                            className: 'cvat-modal-content-load-job-annotation',
                            onOk: () => {
                                onUploadAnnotations(format, file);
                            },
                            okButtonProps: {
                                type: 'primary',
                                danger: true,
                            },
                            okText: 'Update',
                        });
                    }
                },
                menuKey: Actions.LOAD_JOB_ANNO,
                taskDimension: jobInstance.dimension,
            })}
            <Menu.Item key={Actions.EXPORT_TASK_DATASET}>Export task dataset</Menu.Item>
            <Menu.Item key={Actions.REMOVE_ANNO}>Remove annotations</Menu.Item>
            <Menu.Item key={Actions.OPEN_TASK}>
                <a
                    href={`/tasks/${taskID}`}
                    onClick={(e: React.MouseEvent) => {
                        e.preventDefault();
                        history.push(`/tasks/${taskID}`);
                        return false;
                    }}
                >
                    Open the task
                </a>
            </Menu.Item>
            {jobState === core.enums.JobState.NEW && [JobStage.ANNOTATION, JobStage.REVIEW].includes(jobStage) ?
                <Menu.Item key={Actions.START_JOB}>Start the job</Menu.Item> : null}
            {jobStage === JobStage.ANNOTATION && jobState === core.enums.JobState.IN_PROGRESS ?
                <Menu.Item key={Actions.SUBMIT_ANNOTATIONS}>Submit annotations</Menu.Item> : null}
            {[JobStage.ANNOTATION, JobStage.REVIEW].includes(jobStage) ?
                <Menu.Item key={Actions.FINISH_JOB}>Finish the job</Menu.Item> : null}
            {jobStage === JobStage.ACCEPTANCE ?
                <Menu.Item key={Actions.RENEW_JOB}>Renew the job</Menu.Item> : null}
            {jobStage === JobStage.REVIEW && jobState !== core.enums.JobState.NEW ? (
                <Menu.Item key={Actions.SUBMIT_REVIEW}>Submit the review</Menu.Item>
            ) : null}
        </Menu>
    );
}

export default withRouter(AnnotationMenuComponent);
