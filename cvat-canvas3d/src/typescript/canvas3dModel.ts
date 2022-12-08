// Copyright (C) 2021-2022 Intel Corporation
// Copyright (C) 2022 CVAT.ai Corporation
//
// SPDX-License-Identifier: MIT

import { ObjectState } from '.';
import { MasterImpl } from './master';

export interface Size {
    width: number;
    height: number;
}

export interface ActiveElement {
    clientID: string | null;
    attributeID: number | null;
}

export interface GroupData {
    enabled: boolean;
    grouped: ObjectState[];
}

export interface Configuration {
    resetZoom?: boolean;
}

export interface Image {
    renderWidth: number;
    renderHeight: number;
    imageData: ImageData | CanvasImageSource;
}

export interface DrawData {
    enabled: boolean;
    initialState?: any;
    redraw?: number;
    shapeType?: string;
}

export enum FrameZoom {
    MIN = 0.1,
    MAX = 10,
}

export enum Planes {
    TOP = 'topPlane',
    SIDE = 'sidePlane',
    FRONT = 'frontPlane',
    PERSPECTIVE = 'perspectivePlane',
}

export enum ViewType {
    PERSPECTIVE = 'perspective',
    TOP = 'top',
    SIDE = 'side',
    FRONT = 'front',
}

export enum MouseInteraction {
    CLICK = 'click',
    DOUBLE_CLICK = 'dblclick',
    HOVER = 'hover',
}

export interface ShapeProperties {
    opacity: number;
    outlined: boolean;
    outlineColor: string;
    selectedOpacity: number;
    colorBy: string;
}

export enum UpdateReasons {
    IMAGE_CHANGED = 'image_changed',
    OBJECTS_UPDATED = 'objects_updated',
    DRAW = 'draw',
    SELECT = 'select',
    CANCEL = 'cancel',
    DRAG_CANVAS = 'drag_canvas',
    SHAPE_ACTIVATED = 'shape_activated',
    GROUP = 'group',
    FITTED_CANVAS = 'fitted_canvas',
    CONFIG_UPDATED = 'config_updated',
    SHAPES_CONFIG_UPDATED = 'shapes_config_updated',
}

export enum Mode {
    IDLE = 'idle',
    DRAW = 'draw',
    EDIT = 'edit',
    DRAG_CANVAS = 'drag_canvas',
    GROUP = 'group',
}

export interface Canvas3dDataModel {
    activeElement: ActiveElement;
    canvasSize: Size;
    image: Image | null;
    imageID: number | null;
    imageOffset: number;
    imageSize: Size;
    imageIsDeleted: boolean;
    drawData: DrawData;
    mode: Mode;
    objects: ObjectState[];
    shapeProperties: ShapeProperties;
    groupData: GroupData;
    configuration: Configuration;
    isFrameUpdating: boolean;
    nextSetupRequest: {
        frameData: any;
        objectStates: ObjectState[];
    } | null;
}

export interface Canvas3dModel {
    mode: Mode;
    data: Canvas3dDataModel;
    readonly imageIsDeleted: boolean;
    readonly groupData: GroupData;
    readonly configuration: Configuration;
    readonly objects: ObjectState[];
    setup(frameData: any, objectStates: ObjectState[]): void;
    isAbleToChangeFrame(): boolean;
    draw(drawData: DrawData): void;
    cancel(): void;
    dragCanvas(enable: boolean): void;
    activate(clientID: string | null, attributeID: number | null): void;
    configureShapes(shapeProperties: ShapeProperties): void;
    configure(configuration: Configuration): void;
    fit(): void;
    group(groupData: GroupData): void;
    destroy(): void;
    updateCanvasObjects(): void;
    unlockFrameUpdating(): void;
}

export class Canvas3dModelImpl extends MasterImpl implements Canvas3dModel {
    public data: Canvas3dDataModel;

    public constructor() {
        super();
        this.data = {
            activeElement: {
                clientID: null,
                attributeID: null,
            },
            canvasSize: {
                height: 0,
                width: 0,
            },
            objects: [],
            image: null,
            imageID: null,
            imageOffset: 0,
            imageSize: {
                height: 0,
                width: 0,
            },
            imageIsDeleted: false,
            drawData: {
                enabled: false,
                initialState: null,
            },
            mode: Mode.IDLE,
            groupData: {
                enabled: false,
                grouped: [],
            },
            shapeProperties: {
                opacity: 40,
                outlined: false,
                outlineColor: '#000000',
                selectedOpacity: 60,
                colorBy: 'Label',
            },
            configuration: {
                resetZoom: false,
            },
            isFrameUpdating: false,
            nextSetupRequest: null,
        };
    }

    public updateCanvasObjects(): void {
        this.notify(UpdateReasons.OBJECTS_UPDATED);
    }

    public unlockFrameUpdating(): void {
        this.data.isFrameUpdating = false;
        if (this.data.nextSetupRequest) {
            try {
                const { frameData, objectStates } = this.data.nextSetupRequest;
                this.setup(frameData, objectStates);
            } finally {
                this.data.nextSetupRequest = null;
            }
        }
    }

    public setup(frameData: any, objectStates: ObjectState[]): void {
        if (this.data.imageID !== frameData.number) {
            if ([Mode.EDIT].includes(this.data.mode)) {
                throw Error(`Canvas is busy. Action: ${this.data.mode}`);
            }
        }

        if (this.data.isFrameUpdating) {
            this.data.nextSetupRequest = {
                frameData, objectStates,
            };
            return;
        }

        if (frameData.number === this.data.imageID && frameData.deleted === this.data.imageIsDeleted) {
            this.data.objects = objectStates;
            this.notify(UpdateReasons.OBJECTS_UPDATED);
            return;
        }

        this.data.isFrameUpdating = true;
        this.data.imageID = frameData.number;
        frameData
            .data((): void => {
                this.data.image = null;
                this.notify(UpdateReasons.IMAGE_CHANGED);
            })
            .then((data: Image): void => {
                this.data.imageSize = {
                    height: frameData.height as number,
                    width: frameData.width as number,
                };
                this.data.imageIsDeleted = frameData.deleted;
                this.data.image = data;
                this.data.objects = objectStates;
                this.notify(UpdateReasons.IMAGE_CHANGED);
            })
            .catch((exception: any): void => {
                this.data.isFrameUpdating = false;
                throw exception;
            });
    }

    public set mode(value: Mode) {
        this.data.mode = value;
    }

    public get mode(): Mode {
        return this.data.mode;
    }

    public get objects(): ObjectState[] {
        return [...this.data.objects];
    }

    public isAbleToChangeFrame(): boolean {
        const isUnable = [Mode.EDIT].includes(this.data.mode) ||
            this.data.isFrameUpdating || (this.data.mode === Mode.DRAW && typeof this.data.drawData.redraw === 'number');
        return !isUnable;
    }

    public draw(drawData: DrawData): void {
        if (drawData.enabled && this.data.drawData.enabled && !drawData.initialState) {
            throw new Error('Drawing has been already started');
        }
        if ([Mode.DRAW, Mode.EDIT].includes(this.data.mode) && !drawData.initialState) {
            return;
        }
        this.data.drawData.enabled = drawData.enabled;
        this.data.mode = Mode.DRAW;

        if (typeof drawData.redraw === 'number') {
            const clientID = drawData.redraw;
            const [state] = this.data.objects.filter((_state: any): boolean => _state.clientID === clientID);

            if (state) {
                this.data.drawData = { ...drawData };
                this.data.drawData.initialState = { ...this.data.drawData.initialState, label: state.label };
                this.data.drawData.shapeType = state.shapeType;
            } else {
                return;
            }
        } else {
            this.data.drawData = { ...drawData };
            if (this.data.drawData.initialState) {
                this.data.drawData.shapeType = this.data.drawData.initialState.shapeType;
            }
        }
        this.notify(UpdateReasons.DRAW);
    }

    public cancel(): void {
        this.notify(UpdateReasons.CANCEL);
    }

    public dragCanvas(enable: boolean): void {
        if (enable && this.data.mode !== Mode.IDLE) {
            throw Error(`Canvas is busy. Action: ${this.data.mode}`);
        }

        if (!enable && this.data.mode !== Mode.DRAG_CANVAS) {
            throw Error(`Canvas is not in the drag mode. Action: ${this.data.mode}`);
        }

        this.data.mode = enable ? Mode.DRAG_CANVAS : Mode.IDLE;
        this.notify(UpdateReasons.DRAG_CANVAS);
    }

    public activate(clientID: string | null, attributeID: number | null): void {
        if (this.data.activeElement.clientID === clientID && this.data.activeElement.attributeID === attributeID) {
            return;
        }
        if (this.data.mode !== Mode.IDLE) {
            throw Error(`Canvas is busy. Action: ${this.data.mode}`);
        }
        if (typeof clientID === 'number') {
            const [state] = this.data.objects.filter((_state: any): boolean => _state.clientID === clientID);
            if (!state || state.objectType === 'tag') {
                return;
            }
        }
        this.data.activeElement = {
            clientID,
            attributeID,
        };
        this.notify(UpdateReasons.SHAPE_ACTIVATED);
    }

    public group(groupData: GroupData): void {
        if (![Mode.IDLE, Mode.GROUP].includes(this.data.mode)) {
            throw Error(`Canvas is busy. Action: ${this.data.mode}`);
        }

        if (this.data.groupData.enabled && groupData.enabled) {
            return;
        }

        if (!this.data.groupData.enabled && !groupData.enabled) {
            return;
        }
        this.data.mode = groupData.enabled ? Mode.GROUP : Mode.IDLE;
        this.data.groupData = { ...this.data.groupData, ...groupData };
        this.notify(UpdateReasons.GROUP);
    }

    public configure(configuration: Configuration): void {
        if (typeof configuration.resetZoom === 'boolean') {
            this.data.configuration.resetZoom = configuration.resetZoom;
        }

        this.notify(UpdateReasons.CONFIG_UPDATED);
    }

    public configureShapes(shapeProperties: ShapeProperties): void {
        if (typeof shapeProperties.opacity === 'number') {
            this.data.shapeProperties.opacity = Math.max(0, Math.min(shapeProperties.opacity, 100));
        }

        if (typeof shapeProperties.selectedOpacity === 'number') {
            this.data.shapeProperties.selectedOpacity = Math.max(0, Math.min(shapeProperties.selectedOpacity, 100));
        }

        if (['Label', 'Instance', 'Group'].includes(shapeProperties.colorBy)) {
            this.data.shapeProperties.colorBy = shapeProperties.colorBy;
        }

        if (typeof shapeProperties.outlined === 'boolean') {
            this.data.shapeProperties.outlined = shapeProperties.outlined;
        }

        if (typeof shapeProperties.outlineColor === 'string') {
            this.data.shapeProperties.outlineColor = shapeProperties.outlineColor;
        }

        this.notify(UpdateReasons.SHAPES_CONFIG_UPDATED);
    }

    public fit(): void {
        this.notify(UpdateReasons.FITTED_CANVAS);
    }

    public get configuration(): Configuration {
        return { ...this.data.configuration };
    }

    public get groupData(): GroupData {
        return { ...this.data.groupData };
    }

    public get imageIsDeleted(): boolean {
        return this.data.imageIsDeleted;
    }

    public destroy(): void {}
}
