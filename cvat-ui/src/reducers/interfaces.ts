export interface AuthState {
    initialized: boolean;
    user: any;
}

export interface TasksQuery {
    page: number;
    id: number | null;
    search: string | null;
    owner: string | null;
    assignee: string | null;
    name: string | null;
    status: string | null;
    mode: string | null;
    [key: string]: string | number | null;
}

export interface Task {
    instance: any; // cvat-core instance
    preview: string;
}

export interface TasksState {
    initialized: boolean;
    fetching: boolean;
    gettingQuery: TasksQuery;
    count: number;
    current: Task[];
    activities: {
        dumps: {
            byTask: {
                // dumps in different formats at the same time
                [tid: number]: string[]; // dumper names
            };
        };
        exports: {
            byTask: {
                // exports in different formats at the same time
                [tid: number]: string[]; // dumper names
            };
        };
        loads: {
            byTask: {
                // only one loading simultaneously
                [tid: number]: string; // loader name
            };
        };
        deletes: {
            byTask: {
                [tid: number]: boolean; // deleted (deleting if in dictionary)
            };
        };
        creates: {
            status: string;
        };
    };
}

export interface FormatsState {
    annotationFormats: any[];
    datasetFormats: any[];
    fetching: boolean;
    initialized: boolean;
}

// eslint-disable-next-line import/prefer-default-export
export enum SupportedPlugins {
    GIT_INTEGRATION = 'GIT_INTEGRATION',
    AUTO_ANNOTATION = 'AUTO_ANNOTATION',
    TF_ANNOTATION = 'TF_ANNOTATION',
    TF_SEGMENTATION = 'TF_SEGMENTATION',
    ANALYTICS = 'ANALYTICS',
}

export interface PluginsState {
    fetching: boolean;
    initialized: boolean;
    plugins: {
        [name in SupportedPlugins]: boolean;
    };
}

export interface UsersState {
    users: any[];
    fetching: boolean;
    initialized: boolean;
}

export interface ShareFileInfo { // get this data from cvat-core
    name: string;
    type: 'DIR' | 'REG';
}

export interface ShareItem {
    name: string;
    type: 'DIR' | 'REG';
    children: ShareItem[];
}

export interface ShareState {
    root: ShareItem;
}

export interface Model {
    id: number | null; // null for preinstalled models
    ownerID: number | null; // null for preinstalled models
    name: string;
    primary: boolean;
    uploadDate: string;
    updateDate: string;
    labels: string[];
}

export interface Running {
    [tid: string]: {
        status: string;
        processId: string;
        error: any;
    };
}

export interface ModelsState {
    initialized: boolean;
    fetching: boolean;
    creatingStatus: string;
    models: Model[];
    runnings: Running[];
    visibleRunWindows: boolean;
    activeRunTask: any;
}

export interface ModelFiles {
    [key: string]: string | File;
    xml: string | File;
    bin: string | File;
    py: string | File;
    json: string | File;
}

export interface NotificationsState {
    errors: {
        auth: {
            authorized: any;
            login: any;
            logout: any;
            register: any;
        };
        tasks: {
            fetching: any;
            updating: any;
            dumping: any;
            loading: any;
            exporting: any;
            deleting: any;
            creating: any;
        };
        formats: {
            fetching: any;
        };
        users: {
            fetching: any;
        };
        share: {
            fetching: any;
        };
        models: {
            creating: any;
            starting: any;
            fetching: any;
            deleting: any;
            inferenceStatusFetching: any;
        };
    };
    messages: {
        tasks: {
            loading: string;
        };
    };
}

export interface CombinedState {
    auth: AuthState;
    tasks: TasksState;
    users: UsersState;
    share: ShareState;
    formats: FormatsState;
    plugins: PluginsState;
    models: ModelsState;
    notifications: NotificationsState;
}
