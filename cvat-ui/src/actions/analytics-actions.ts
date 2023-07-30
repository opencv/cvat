// Copyright (C) 2023 CVAT.ai Corporation
//
// SPDX-License-Identifier: MIT

import {
    getCore, QualityReport, QualitySettings, Task,
} from 'cvat-core-wrapper';
import { Dispatch, ActionCreator } from 'redux';
import { QualityQuery, QualitySettingsQuery } from 'reducers';
import { ActionUnion, createAction, ThunkAction } from 'utils/redux';

const cvat = getCore();

export enum AnalyticsActionsTypes {
    GET_QUALITY_REPORTS = 'GET_QUALITY_REPORTS',
    GET_QUALITY_REPORTS_SUCCESS = 'GET_QUALITY_REPORTS_SUCCESS',
    GET_QUALITY_REPORTS_FAILED = 'GET_QUALITY_REPORTS_FAILED',
    GET_TASK_QUALITY_REPORTS = 'GET_TASK_QUALITY_REPORTS',
    GET_TASK_QUALITY_REPORTS_SUCCESS = 'GET_TASK_QUALITY_REPORTS_SUCCESS',
    GET_TASK_QUALITY_REPORTS_FAILED = 'GET_TASK_QUALITY_REPORTS_FAILED',
    SWITCH_QUALITY_SETTINGS_VISIBLE = 'SWITCH_QUALITY_SETTINGS_VISIBLE',
    GET_QUALITY_SETTINGS = 'GET_QUALITY_SETTINGS',
    GET_QUALITY_SETTINGS_SUCCESS = 'GET_QUALITY_SETTINGS_SUCCESS',
    GET_QUALITY_SETTINGS_FAILED = 'GET_QUALITY_SETTINGS_FAILED',
    CREATE_QUALITY_SETTINGS = 'CREATE_QUALITY_SETTINGS',
    CREATE_QUALITY_SETTINGS_SUCCESS = 'CREATE_QUALITY_SETTINGS_SUCCESS',
    CREATE_QUALITY_SETTINGS_FAILED = 'CREATE_QUALITY_SETTINGS_FAILED',
    UPDATE_QUALITY_SETTINGS = 'UPDATE_QUALITY_SETTINGS',
    UPDATE_QUALITY_SETTINGS_SUCCESS = 'UPDATE_QUALITY_SETTINGS_SUCCESS',
    UPDATE_QUALITY_SETTINGS_FAILED = 'UPDATE_QUALITY_SETTINGS_FAILED',
}

export const analyticsActions = {
    getQualityReports: (query: QualityQuery) => (
        createAction(AnalyticsActionsTypes.GET_QUALITY_REPORTS, { query })
    ),
    getQualityReportsSuccess: (result: any) => createAction(
        AnalyticsActionsTypes.GET_QUALITY_REPORTS_SUCCESS, { result },
    ),
    getQualityReportsFailed: (error: any) => createAction(
        AnalyticsActionsTypes.GET_QUALITY_REPORTS_FAILED, { error },
    ),
    getTaskQualityReports: (task: Task, query: QualityQuery) => (
        createAction(AnalyticsActionsTypes.GET_TASK_QUALITY_REPORTS, { query })
    ),
    getTaskQualityReportsSuccess: (tasksReports: QualityReport[], jobsReports: QualityReport[]) => createAction(
        AnalyticsActionsTypes.GET_TASK_QUALITY_REPORTS_SUCCESS, { tasksReports, jobsReports },
    ),
    getTaskQualityReportsFailed: (error: any) => createAction(
        AnalyticsActionsTypes.GET_TASK_QUALITY_REPORTS_FAILED, { error },
    ),
    switchQualitySettingsVisible: (visible: boolean) => (
        createAction(AnalyticsActionsTypes.SWITCH_QUALITY_SETTINGS_VISIBLE, { visible })
    ),
    getQualitySettings: (query: QualitySettingsQuery) => (
        createAction(AnalyticsActionsTypes.GET_QUALITY_SETTINGS, { query })
    ),
    getQualitySettingsSuccess: (settings: QualitySettings) => (
        createAction(AnalyticsActionsTypes.GET_QUALITY_SETTINGS_SUCCESS, { settings })
    ),
    getQualitySettingsFailed: (error: any) => (
        createAction(AnalyticsActionsTypes.GET_QUALITY_SETTINGS_FAILED, { error })
    ),
    updateQualitySettings: (settings: QualitySettings) => (
        createAction(AnalyticsActionsTypes.UPDATE_QUALITY_SETTINGS, { settings })
    ),
    updateQualitySettingsSuccess: (settings: QualitySettings) => (
        createAction(AnalyticsActionsTypes.UPDATE_QUALITY_SETTINGS_SUCCESS, { settings })
    ),
    updateQualitySettingsFailed: (error: any) => (
        createAction(AnalyticsActionsTypes.UPDATE_QUALITY_SETTINGS_FAILED, { error })
    ),
    createQualitySettings: (settings: QualitySettings) => (
        createAction(AnalyticsActionsTypes.CREATE_QUALITY_SETTINGS, { settings })
    ),
    createQualitySettingsSuccess: (settings: QualitySettings) => (
        createAction(AnalyticsActionsTypes.CREATE_QUALITY_SETTINGS_SUCCESS, { settings })
    ),
    createQualitySettingsFailed: (error: any) => (
        createAction(AnalyticsActionsTypes.CREATE_QUALITY_SETTINGS_FAILED, { error })
    ),
};

export const getQualityReportsAsync = (query: Partial<QualityQuery>): ThunkAction => (
    async (dispatch: ActionCreator<Dispatch>): Promise<void> => {
        dispatch(analyticsActions.getQualityReports(query));

        try {
            const result = await cvat.analytics.quality.reports({ ...query });
            dispatch(analyticsActions.getQualityReportsSuccess(result));
        } catch (error) {
            dispatch(analyticsActions.getQualityReportsFailed(error));
        }
    }
);

export const getTaskQualityReportsAsync = (task: Task, query: QualityQuery): ThunkAction => (
    async (dispatch: ActionCreator<Dispatch>): Promise<void> => {
        dispatch(analyticsActions.getTaskQualityReports(task, query));

        try {
            // reports are returned in order -created_date
            const reports = await cvat.analytics.quality.reports({ taskId: task.id });
            const taskReport = reports.find((report: QualityReport) => report.target === 'task');
            const jobReports = reports.filter((report: QualityReport) => report.target === 'job');
            const jobIds = task.jobs.map((job) => job.id);
            const relevantReports: QualityReport[] = [];
            jobIds.forEach((jobId: number) => {
                const report = jobReports.find((_report: QualityReport) => _report.jobId === jobId);
                if (report) relevantReports.push(report);
            });

            dispatch(analyticsActions.getTaskQualityReportsSuccess(
                taskReport ? [taskReport] : [], relevantReports,
            ));
        } catch (error) {
            dispatch(analyticsActions.getTaskQualityReportsFailed(error));
        }
    }
);

export const createQualitySettingsAsync = (qualitySettings: QualitySettings): ThunkAction => (
    async (dispatch: ActionCreator<Dispatch>): Promise<void> => {
        dispatch(analyticsActions.createQualitySettings(qualitySettings));

        try {
            const createdQualitySettings = await qualitySettings.save();
            dispatch(analyticsActions.createQualitySettingsSuccess(createdQualitySettings));
        } catch (error) {
            dispatch(analyticsActions.createQualitySettingsFailed(error));
            throw error;
        }
    }
);

export const getQualitySettingsAsync = (
    query: Partial<QualitySettingsQuery>,
    loadDefaults = false,
): ThunkAction => (
    async (dispatch: ActionCreator<Dispatch>): Promise<void> => {
        dispatch(analyticsActions.getQualitySettings(query));

        try {
            let qualitySettings = await cvat.analytics.quality.settings.get(query);

            if (!qualitySettings && loadDefaults) {
                const defaults = await cvat.analytics.quality.settings.defaults();
                qualitySettings = new QualitySettings({
                    ...defaults,
                    ...(query.taskId ? { task_id: query.taskId } : {}),
                    ...(query.projectId ? { task_id: query.projectId } : {}),
                });
            }

            dispatch(analyticsActions.getQualitySettingsSuccess(qualitySettings));
        } catch (error) {
            dispatch(analyticsActions.getTaskQualityReportsFailed(error));
        }
    }
);

export const updateQualitySettingsAsync = (qualitySettings: QualitySettings): ThunkAction => (
    async (dispatch: ActionCreator<Dispatch>): Promise<void> => {
        dispatch(analyticsActions.updateQualitySettings(qualitySettings));

        try {
            const updatedQualitySettings = await qualitySettings.save();
            dispatch(analyticsActions.updateQualitySettingsSuccess(updatedQualitySettings));
        } catch (error) {
            dispatch(analyticsActions.updateQualitySettingsFailed(error));
            throw error;
        }
    }
);

export type AnalyticsActions = ActionUnion<typeof analyticsActions>;
