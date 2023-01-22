// Copyright (C) 2020-2022 Intel Corporation
// Copyright (C) 2022 CVAT.ai Corporation
//
// SPDX-License-Identifier: MIT

import { ActionUnion, createAction, ThunkAction } from 'utils/redux';
import {
    ActiveInference, RQStatus, ModelsQuery, Indexable, ModelProvider,
} from 'reducers';
import { getCore, MLModel } from 'cvat-core-wrapper';

const cvat = getCore();

export enum ModelsActionTypes {
    GET_MODELS = 'GET_MODELS',
    GET_MODELS_SUCCESS = 'GET_MODELS_SUCCESS',
    GET_MODELS_FAILED = 'GET_MODELS_FAILED',
    CREATE_MODEL = 'CREATE_MODEL',
    CREATE_MODEL_SUCCESS = 'CREATE_MODEL_SUCCESS',
    CREATE_MODEL_FAILED = 'CREATE_MODEL_FAILED',
    DELETE_MODEL = 'DELETE_MODEL',
    DELETE_MODEL_SUCCESS = 'DELETE_MODEL_SUCCESS',
    DELETE_MODEL_FAILED = 'DELETE_MODEL_FAILED',
    START_INFERENCE_FAILED = 'START_INFERENCE_FAILED',
    GET_INFERENCE_STATUS_SUCCESS = 'GET_INFERENCE_STATUS_SUCCESS',
    GET_INFERENCE_STATUS_FAILED = 'GET_INFERENCE_STATUS_FAILED',
    FETCH_META_FAILED = 'FETCH_META_FAILED',
    SHOW_RUN_MODEL_DIALOG = 'SHOW_RUN_MODEL_DIALOG',
    CLOSE_RUN_MODEL_DIALOG = 'CLOSE_RUN_MODEL_DIALOG',
    CANCEL_INFERENCE_SUCCESS = 'CANCEL_INFERENCE_SUCCESS',
    CANCEL_INFERENCE_FAILED = 'CANCEL_INFERENCE_FAILED',
    GET_MODEL_PROVIDERS = 'GET_MODEL_PROVIDERS',
    GET_MODEL_PROVIDERS_SUCCESS = 'GET_MODEL_PROVIDERS_SUCCESS',
    GET_MODEL_PROVIDERS_FAILED = 'GET_MODEL_PROVIDERS_FAILED',
}

export const modelsActions = {
    getModels: (query?: ModelsQuery) => createAction(ModelsActionTypes.GET_MODELS, { query }),
    getModelsSuccess: (models: MLModel[]) => createAction(ModelsActionTypes.GET_MODELS_SUCCESS, {
        models,
    }),
    getModelsFailed: (error: any) => createAction(ModelsActionTypes.GET_MODELS_FAILED, {
        error,
    }),
    createModel: () => createAction(ModelsActionTypes.CREATE_MODEL),
    createModelSuccess: (model: MLModel) => createAction(ModelsActionTypes.CREATE_MODEL_SUCCESS, {
        model,
    }),
    createModelFailed: (error: any) => createAction(ModelsActionTypes.CREATE_MODEL_FAILED, { error }),
    deleteModel: (model: MLModel) => createAction(ModelsActionTypes.DELETE_MODEL, { model }),
    deleteModelSuccess: (modelID: string) => createAction(ModelsActionTypes.DELETE_MODEL_SUCCESS, { modelID }),
    deleteModelFailed: (error: any) => createAction(ModelsActionTypes.DELETE_MODEL_FAILED, { error }),
    fetchMetaFailed: (error: any) => createAction(ModelsActionTypes.FETCH_META_FAILED, { error }),
    getInferenceStatusSuccess: (taskID: number, activeInference: ActiveInference) => (
        createAction(ModelsActionTypes.GET_INFERENCE_STATUS_SUCCESS, {
            taskID,
            activeInference,
        })
    ),
    getInferenceStatusFailed: (taskID: number, error: any) => (
        createAction(ModelsActionTypes.GET_INFERENCE_STATUS_FAILED, {
            taskID,
            error,
        })
    ),
    startInferenceFailed: (taskID: number, error: any) => (
        createAction(ModelsActionTypes.START_INFERENCE_FAILED, {
            taskID,
            error,
        })
    ),
    cancelInferenceSuccess: (taskID: number) => (
        createAction(ModelsActionTypes.CANCEL_INFERENCE_SUCCESS, {
            taskID,
        })
    ),
    cancelInferenceFailed: (taskID: number, error: any) => (
        createAction(ModelsActionTypes.CANCEL_INFERENCE_FAILED, {
            taskID,
            error,
        })
    ),
    closeRunModelDialog: () => createAction(ModelsActionTypes.CLOSE_RUN_MODEL_DIALOG),
    showRunModelDialog: (taskInstance: any) => (
        createAction(ModelsActionTypes.SHOW_RUN_MODEL_DIALOG, {
            taskInstance,
        })
    ),
    getModelProviders: () => createAction(ModelsActionTypes.GET_MODEL_PROVIDERS),
    getModelProvidersSuccess: (providers: ModelProvider[]) => (
        createAction(ModelsActionTypes.GET_MODEL_PROVIDERS_SUCCESS, {
            providers,
        })),
    getModelProvidersFailed: (error: any) => createAction(ModelsActionTypes.GET_MODEL_PROVIDERS_FAILED, { error }),
};

export type ModelsActions = ActionUnion<typeof modelsActions>;

const core = getCore();

export function getModelsAsync(query?: ModelsQuery): ThunkAction {
    return async (dispatch): Promise<void> => {
        dispatch(modelsActions.getModels(query));

        const filteredQuery = { ...query };
        if (query) {
            for (const key of Object.keys(query)) {
                if ((filteredQuery as Indexable)[key] === null) {
                    delete (filteredQuery as Indexable)[key];
                }
            }
        }

        try {
            const models = await core.lambda.list(filteredQuery);
            dispatch(modelsActions.getModelsSuccess(models));
        } catch (error) {
            dispatch(modelsActions.getModelsFailed(error));
        }
    };
}

export function createModelAsync(modelData: Record<string, string>): ThunkAction {
    return async function (dispatch) {
        const model = new cvat.classes.MLModel(modelData);

        dispatch(modelsActions.createModel());
        try {
            const createdModel = await model.save();
            dispatch(modelsActions.createModelSuccess(createdModel));
        } catch (error) {
            dispatch(modelsActions.createModelFailed(error));
            throw error;
        }
    };
}

export function deleteModelAsync(model: MLModel): ThunkAction {
    return async function (dispatch) {
        dispatch(modelsActions.deleteModel(model));
        try {
            await model.delete();
            dispatch(modelsActions.deleteModelSuccess(model.id));
        } catch (error) {
            dispatch(modelsActions.deleteModelFailed(error));
            throw error;
        }
    };
}

interface InferenceMeta {
    taskID: number;
    requestID: string;
}

function listen(inferenceMeta: InferenceMeta, dispatch: (action: ModelsActions) => void): void {
    const { taskID, requestID } = inferenceMeta;
    core.lambda
        .listen(requestID, (status: RQStatus, progress: number, message: string) => {
            if (status === RQStatus.failed || status === RQStatus.unknown) {
                dispatch(
                    modelsActions.getInferenceStatusFailed(
                        taskID,
                        new Error(`Inference status for the task ${taskID} is ${status}. ${message}`),
                    ),
                );

                return;
            }

            dispatch(
                modelsActions.getInferenceStatusSuccess(taskID, {
                    status,
                    progress,
                    error: message,
                    id: requestID,
                }),
            );
        })
        .catch((error: Error) => {
            dispatch(
                modelsActions.getInferenceStatusFailed(taskID, {
                    status: 'unknown',
                    progress: 0,
                    error: error.toString(),
                    id: requestID,
                }),
            );
        });
}

export function getInferenceStatusAsync(): ThunkAction {
    return async (dispatch): Promise<void> => {
        const dispatchCallback = (action: ModelsActions): void => {
            dispatch(action);
        };

        try {
            const requests = await core.lambda.requests();
            requests
                .map((request: any): object => ({
                    taskID: +request.function.task,
                    requestID: request.id,
                }))
                .forEach((inferenceMeta: InferenceMeta): void => {
                    listen(inferenceMeta, dispatchCallback);
                });
        } catch (error) {
            dispatch(modelsActions.fetchMetaFailed(error));
        }
    };
}

export function startInferenceAsync(taskId: number, model: MLModel, body: object): ThunkAction {
    return async (dispatch): Promise<void> => {
        try {
            const requestID: string = await core.lambda.run(taskId, model, body);
            const dispatchCallback = (action: ModelsActions): void => {
                dispatch(action);
            };

            listen(
                {
                    taskID: taskId,
                    requestID,
                },
                dispatchCallback,
            );
        } catch (error) {
            dispatch(modelsActions.startInferenceFailed(taskId, error));
        }
    };
}

export function cancelInferenceAsync(taskID: number): ThunkAction {
    return async (dispatch, getState): Promise<void> => {
        try {
            const inference = getState().models.inferences[taskID];
            await core.lambda.cancel(inference.id);
            dispatch(modelsActions.cancelInferenceSuccess(taskID));
        } catch (error) {
            dispatch(modelsActions.cancelInferenceFailed(taskID, error));
        }
    };
}

export function getModelProvidersAsync(): ThunkAction {
    return async function (dispatch) {
        dispatch(modelsActions.getModelProviders());
        try {
            const providers = await cvat.functions.providers();
            dispatch(modelsActions.getModelProvidersSuccess(providers));
        } catch (error) {
            dispatch(modelsActions.getModelProvidersFailed(error));
        }
    };
}
