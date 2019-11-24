/*
 * Copyright (C) 2018 Intel Corporation
 *
 * SPDX-License-Identifier: MIT
 */

/* exported CuboidModel, CuboidView */

/* global
    math:false
    SVG:false
    PolylineModel:false
    PolyShapeController:false
    PolyShapeModel:false
    PolyShapeView:false
    ShapeView:false STROKE_WIDTH:false
    AREA_TRESHOLD:false
    POINT_RADIUS:false
    SELECT_POINT_STROKE_WIDTH:false
    convertToArray:false
    convertPlainArrayToActual:false
*/

const MIN_EDGE_LENGTH = 5;
const EDGE_MARGIN = 20;

class CuboidController extends PolyShapeController {
    constructor(cuboidModel) {
        super(cuboidModel);
        const frame = window.cvat.player.frames.current;
        const points = PolylineModel.convertStringToNumberArray(cuboidModel._interpolatePosition(frame).points);
        this.viewModel = new Cuboid2PointViewModel(points);
    }

    setView(cuboidView) {
        this.cuboidView = cuboidView;
    }

    set draggable(value) {
        this._model.draggable = value;
    }

    get draggable() {
        return this._model.draggable;
    }

    addEventsToCube() {
        const controller = this;
        const cuboidview = this.cuboidView;
        const edges = cuboidview._uis.shape.getEdges();

        cuboidview._uis.shape.on('mousedown', () => {
            ShapeView.prototype._positionateMenus.call(cuboidview);
        });
        edges.forEach((edge) => {
            edge.on('dragstart', () => {
                cuboidview._flags.dragging = true;
                cuboidview._hideShapeText();
                cuboidview.notify('drag');
            }).on('dragend', () => {
                cuboidview._flags.dragging = false;
                cuboidview._showShapeText();
                cuboidview.notify('drag');
                controller.updateModel();
                controller.updateViewModel();
            }).on('resizestart', () => {
                cuboidview._flags.resizing = true;
                cuboidview._hideShapeText();
                cuboidview.notify('resize');
            }).on('resizedone', () => {
                cuboidview._flags.resizing = false;
                controller.updateModel();
                controller.updateViewModel();
                cuboidview.notify('resize');
            });
        });

        cuboidview._uis.shape.left.on('dragstart', () => {
            cuboidview._flags.dragging = true;
            ShapeView.prototype._positionateMenus.call(cuboidview);
            cuboidview._hideShapeText();
            cuboidview.notify('drag');
        }).on('dragend', () => {
            cuboidview._flags.dragging = false;
            cuboidview._showShapeText();
            cuboidview.notify('drag');
            controller.updateModel();
            controller.updateViewModel();
        });

        cuboidview._uis.shape.dorsal.on('dragstart', () => {
            cuboidview._flags.dragging = true;
            ShapeView.prototype._positionateMenus.call(cuboidview);
            cuboidview._hideShapeText();
            cuboidview.notify('drag');
        }).on('dragend', () => {
            cuboidview._flags.dragging = false;
            cuboidview._showShapeText();
            cuboidview.notify('drag');
            controller.updateModel();
            controller.updateViewModel();
        });

        this.makeDraggable();
        this.makeResizable();
    }

    // computes new position of points given an initial position and a current position
    translatePoints(startPoint, startPosition, currentPosition) {
        const dx = currentPosition.x - startPoint.x;
        const dy = currentPosition.y - startPoint.y;
        const newPoints = [];
        for (let i = 0; i < startPosition.length; i++) {
            newPoints[i] = { x: startPosition[i].x + dx, y: startPosition[i].y + dy };
        }
        this.viewModel.setPoints(newPoints);
    }

    makeDraggable() {
        const controller = this;
        const { viewModel } = this;
        const view = this.cuboidView._uis.shape;
        let startPoint = null;
        let startPosition = null;

        view.draggable().off('dragend').on('dragstart', (e) => {
            startPoint = e.detail.p;
            startPosition = viewModel.getPoints();
        }).on('dragmove', (e) => {
            e.preventDefault();
            controller.translatePoints(startPoint, startPosition, e.detail.p);
            controller.refreshView();
        }).on('dragend', () => {
            controller.updateModel();
            controller.updateViewModel(); // We update the view model because some clipping may happen after passing it to the model
        });

        // Controllable vertical edges
        view.fl_center.draggable(function (x) {
            return { x:x<viewModel.fr.canvasPoints[0].x && x>viewModel.vpl[0], y: this.attr('y1') };

        }).on('dragmove', function () {
            view.front_left_edge.center(this.cx(),this.cy());

            const position = convertPlainArrayToActual([view.front_left_edge.attr('x1'), view.front_left_edge.attr('y1')])[0];
            const { x } = position;

            const y1 = viewModel.ft.getEquation().getY(x);
            const y2 = viewModel.fb.getEquation().getY(x);

            const top_point = { x, y: y1 };
            const bot_point = { x, y: y2 };

            viewModel.fl.points = [top_point, bot_point];
            controller.updateViewAndVM();
        })

        view.dr_center.draggable(function (x) {
            return { x:x>viewModel.fr.canvasPoints[0].x, y: this.attr('y1') };
        }).on('dragmove', function () {
            view.dorsal_right_edge.center(this.cx(),this.cy());

            const position = convertPlainArrayToActual([view.dorsal_right_edge.attr('x1'), view.dorsal_right_edge.attr('y1')])[0];
            const { x } = position;

            const y1 = viewModel.rt.getEquation().getY(x);
            const y2 = viewModel.rb.getEquation().getY(x);

            const top_point = { x, y: y1 };
            const bot_point = { x, y: y2 };

            viewModel.dr.points = [top_point, bot_point];
            controller.updateViewAndVM();
        });

        view.fr_center.draggable(function(x){
            return { x:x>viewModel.fl.canvasPoints[0].x, y: this.attr('y1') };
        }).on('dragmove', function () {
            view.front_right_edge.center(this.cx(),this.cy());

            const position = convertPlainArrayToActual([view.front_right_edge.attr('x1'), view.front_right_edge.attr('y1')])[0];
            const { x } = position;
            //
            const y1 = viewModel.ft.getEquation().getY(x);
            const y2 = viewModel.fb.getEquation().getY(x);
            //
            const top_point = { x, y: y1 };
            const bot_point = { x, y: y2 };
            //
            viewModel.fr.points = [top_point, bot_point];
            controller.updateViewAndVM(true);
        });


        // Controllable "horizontal" edges
        view.ft_center.draggable(function (x,y) {
            return { x: x==this.cx(), y:y<view.fb_center.cy()-MIN_EDGE_LENGTH};
        }).on('dragmove', function () {
            view.front_top_edge.center(this.cx(),this.cy());
            controller.horizontalEdgeControl(viewModel.top, view.front_top_edge.attr('x2'), view.front_top_edge.attr('y2'));
        });

        view.rt_center.draggable(function (x, y) {
            return { x:x==this.cx(),y:y<view.rb_center.cy()-MIN_EDGE_LENGTH };
        }).on('dragmove', function () {
            view.right_top_edge.center(this.cx(),this.cy());
            controller.horizontalEdgeControl(viewModel.top, view.right_top_edge.attr('x1'), view.right_top_edge.attr('y1'));
        });

        view.fb_center.draggable(function (x, y) {
            return { x:x==this.cx(),y:y>view.ft_center.cy()+MIN_EDGE_LENGTH};
        }).on('dragmove', function () {
            view.front_bot_edge.center(this.cx(),this.cy());
            controller.horizontalEdgeControl(viewModel.bot, view.front_bot_edge.attr('x2'), view.front_bot_edge.attr('y2'));
        });

        view.rb_center.draggable(function (x, y) {
            return { x:x==this.cx(),y:y>view.rt_center.cy()+MIN_EDGE_LENGTH };
        }).on('dragmove', function () {
            view.right_bot_edge.center(this.cx(),this.cy());
            controller.horizontalEdgeControl(viewModel.bot, view.right_bot_edge.attr('x1'), view.right_bot_edge.attr('y1'));
        });

        // Controllable faces
        view.left.draggable(function (x,y){
            return { x:x<Math.min(viewModel.dr.canvasPoints[0].x,viewModel.fr.canvasPoints[0].x)-MIN_EDGE_LENGTH,y:y };
        }).on('dragmove', function () {
            controller.faceDragControl(viewModel.left, this.attr('points'));
        });
        view.dorsal.draggable().on('dragmove', function () {
            controller.faceDragControl(viewModel.dorsal, this.attr('points'));
        });
        view.right.draggable(function (x,y){
            return { x:x>Math.min(viewModel.dl.canvasPoints[0].x,viewModel.fl.canvasPoints[0].x)+MIN_EDGE_LENGTH,y:y };
        }).on('dragmove', function () {
            controller.faceDragControl(viewModel.right, this.attr('points'),true);
        });
    }

    // Drag controls for the faces
    faceDragControl(face, points) {
        points = window.cvat.translate.points.canvasToActual(points);
        points = PolylineModel.convertStringToNumberArray(points);
        face.points = points;
        this.refreshView();
        this.viewModel.updatePoints();
    }

    // Drag controls for the non-vertical edges
    horizontalEdgeControl(updating_face, mid_x, mid_y) {
        const midPoints = convertPlainArrayToActual([mid_x, mid_y])[0];
        const newPoints = this.edgeIntersections(midPoints);
        const leftPoints = newPoints[0];
        const rightPoints = newPoints[1];

        updating_face.points = [leftPoints, midPoints, rightPoints, null];
        this.updateViewAndVM();
    }

    makeResizable() {
        const controller = this;
        const view = this.cuboidView._uis.shape;
        const { viewModel } = this;
        view.front_left_edge.selectize({
            points: 't,b',
            rotationPoint: false,
        }).resize(viewModel.computeSideEdgeConstraints(viewModel.fl)).on('resizing', function () {
            controller.resizeControl(viewModel.fl, this, viewModel.computeSideEdgeConstraints(viewModel.fl));
        });

        view.front_right_edge.selectize({
            points: 't,b',
            rotationPoint: false,
        }).resize().on('resizing', function () {
            controller.resizeControl(viewModel.fr, this, viewModel.computeMidConstraints());
        });

        view.dorsal_right_edge.selectize({
            points: 't,b',
            rotationPoint: false,
        }).resize(viewModel.computeSideEdgeConstraints(viewModel.dr)).on('resizing', function () {
            controller.resizeControl(viewModel.dr, this, viewModel.computeSideEdgeConstraints(viewModel.dr));
        });
    }

    resizeControl(vm_edge, updated_edge, constraints) {
        const top_point = convertPlainArrayToActual([updated_edge.attr('x1'), updated_edge.attr('y1')])[0];
        const bot_point = convertPlainArrayToActual([updated_edge.attr('x2'), updated_edge.attr('y2')])[0];

        top_point.y = Math.clamp(top_point.y, constraints.y1_range.min, constraints.y1_range.max);
        bot_point.y = Math.clamp(bot_point.y, constraints.y2_range.min, constraints.y2_range.max);

        vm_edge.points = [top_point, bot_point];
        this.updateViewAndVM();
    }

    // updates the view model with the actual position of the points on screen
    // for the case where points are updated when updating the model
    updateViewModel() {
        let { points } = this._model._interpolatePosition(window.cvat.player.frames.current);
        points = PolylineModel.convertStringToNumberArray(points);
        this.viewModel.setPoints(points);
        this.viewModel.updatePoints();
    }

    // refreshes the view and updates the viewmodel
    updateViewAndVM(build) {
        if(build == null){
            this.viewModel.buildBackEdge();
        }
        else{
            this.viewModel.buildBackRightEdge();
        }
        this.refreshView();
    }

    // Given a midpoint of the cuboid, calculates where the left and right point should fall using the vanishing points
    edgeIntersections(midPoint) {
        const left_x = this.viewModel.fl.points[0].x;
        const right_x = this.viewModel.dr.points[0].x;

        const tlf_line = CuboidController.createEquation(this.viewModel.vpl, [midPoint.x, midPoint.y]);
        const trf_line = CuboidController.createEquation(this.viewModel.vpr, [midPoint.x, midPoint.y]);

        const left_y1 = tlf_line.getY(left_x);
        const right_y1 = trf_line.getY(right_x);

        const left_point = { x: left_x, y: left_y1 };
        const right_point = { x: right_x, y: right_y1 };

        return [left_point, right_point];
    }

    // updates the model with the viewModel points
    updateModel() {
        const frame = window.cvat.player.frames.current;
        const position = this._model._interpolatePosition(frame);

        const viewModelpoints = this.viewModel.getPoints();
        // this.viewModel.sortEdges();
        position.points = PolylineModel.convertNumberArrayToString(viewModelpoints);

        this.updatePosition(frame, position);
    }

    refreshView() {
        this.cuboidView._uis.shape.updateView(this.viewModel);
    }

    static removeEventsFromCube(view) {
        const edges = view.getEdges();
        view.off('dragmove').off('dragend').off('dragstart').off('mousedown');
        for (let i = 0; i < edges.length; i++) {
            CuboidController.removeEventsFromEdge(edges[i]);
        }
        view.front_left_edge.selectize(false);
        view.front_right_edge.selectize(false);
        view.dorsal_right_edge.selectize(false);

        view.dorsal.off();
        view.left.off();
    }

    static removeEventsFromEdge(edge) {
        edge.off().draggable(false);
    }

    static createEquation(p1, p2) {
        return new Equation(p1, p2);
    }
}

class CuboidModel extends PolyShapeModel {
    constructor(data, type, cliendID, color) {
        super(data, type, cliendID, color);
        this._minPoints = 6;
        this._clipToFrame = false;
    }

        static isWithinFrame(points) {
        // Ensure at least one point is within the frame
        const { frameWidth, frameHeight } = window.cvat.player.geometry;
        return points.some(point => {
            return point.x >= 0 && point.x <= frameWidth && point.y >= 0 && point.y <= frameHeight
        });
    }

    _verifyArea(box) {
        const withinFrame = CuboidModel.isWithinFrame([
            {x: box.xtl, y: box.ytl},
            {x: box.xbr, y: box.ytl},
            {x: box.xtl, y: box.ybr},
            {x: box.xbr, y: box.ybr},
        ]);
        return withinFrame && ((box.xbr - box.xtl) * (box.ybr - box.ytl) >= AREA_TRESHOLD);
    }

    contain(mousePos, frame) {
        const pos = this._interpolatePosition(frame);
        if (pos.outside) return false;
        let points = PolyShapeModel.convertStringToNumberArray(pos.points);
        points = this.makeHull(points);
        let wn = 0;
        for (let i = 0; i < points.length; i++) {
            const p1 = points[i];
            const p2 = points[i + 1] || points[0];

            if (p1.y <= mousePos.y) {
                if (p2.y > mousePos.y) {
                    if (isLeft(p1, p2, mousePos) > 0) {
                        wn += 1;
                    }
                }
            } else if (p2.y < mousePos.y) {
                if (isLeft(p1, p2, mousePos) < 0) {
                    wn -= 1;
                }
            }
        }

        return wn !== 0;

        function isLeft(P0, P1, P2) {
            return ((P1.x - P0.x) * (P2.y - P0.y) - (P2.x - P0.x) * (P1.y - P0.y));
        }
    }

    makeHull(geoPoints) {
        const newPoints = geoPoints.slice();
        newPoints.sort(POINT_COMPARATOR);
        return makeHullPresorted(newPoints);

        // Returns the convex hull, assuming that each points[i] <= points[i + 1]. Runs in O(n) time.
        function makeHullPresorted(points) {
            if (points.length <= 1) return points.slice();

            // Andrew's monotone chain algorithm. Positive y coordinates correspond to "up"
            // as per the mathematical convention, instead of "down" as per the computer
            // graphics convention. This doesn't affect the correctness of the result.

            const upperHull = [];
            for (let i = 0; i < points.length; i++) {
                const p = points[i];
                while (upperHull.length >= 2) {
                    const q = upperHull[upperHull.length - 1];
                    const r = upperHull[upperHull.length - 2];
                    if ((q.x - r.x) * (p.y - r.y) >= (q.y - r.y) * (p.x - r.x)) upperHull.pop();
                    else break;
                }
                upperHull.push(p);
            }
            upperHull.pop();

            const lowerHull = [];
            for (let i = points.length - 1; i >= 0; i--) {
                const p = points[i];
                while (lowerHull.length >= 2) {
                    const q = lowerHull[lowerHull.length - 1];
                    const r = lowerHull[lowerHull.length - 2];
                    if ((q.x - r.x) * (p.y - r.y) >= (q.y - r.y) * (p.x - r.x)) lowerHull.pop();
                    else break;
                }
                lowerHull.push(p);
            }
            lowerHull.pop();

            if (upperHull.length === 1 && lowerHull.length === 1 && upperHull[0].x === lowerHull[0].x && upperHull[0].y === lowerHull[0].y) return upperHull;
            return upperHull.concat(lowerHull);
        }

        function POINT_COMPARATOR(a, b) {
            if (a.x < b.x) return -1;
            if (a.x > b.x) return +1;
            if (a.y < b.y) return -1;
            if (a.y > b.y) return +1;
            return 0;
        }
    }

    distance(mousePos, frame) {
        const pos = this._interpolatePosition(frame);
        if (pos.outside) return Number.MAX_SAFE_INTEGER;
        const points = PolyShapeModel.convertStringToNumberArray(pos.points);
        let minDistance = Number.MAX_SAFE_INTEGER;
        for (let i = 0; i < points.length; i++) {
            const p1 = points[i];
            const p2 = points[i + 1] || points[0];

            // perpendicular from point to straight length
            const distance = (Math.abs((p2.y - p1.y) * mousePos.x - (p2.x - p1.x) * mousePos.y + p2.x * p1.y - p2.y * p1.x))
                / Math.sqrt(Math.pow(p2.y - p1.y, 2) + Math.pow(p2.x - p1.x, 2));

            // check if perpendicular belongs to the straight segment
            const a = Math.pow(p1.x - mousePos.x, 2) + Math.pow(p1.y - mousePos.y, 2);
            const b = Math.pow(p2.x - p1.x, 2) + Math.pow(p2.y - p1.y, 2);
            const c = Math.pow(p2.x - mousePos.x, 2) + Math.pow(p2.y - mousePos.y, 2);
            if (distance < minDistance && (a + b - c) >= 0 && (c + b - a) >= 0) {
                minDistance = distance;
            }
        }
        return minDistance;
    }

    export() {
        const exported = PolyShapeModel.prototype.export.call(this);
        return exported;
    }

    set draggable(value) {
        this._draggable = value;
        this.notify('draggable');
    }

    get draggable() {
        return this._draggable;
    }
}

class Equation {
    constructor(p1, p2) {
        this.a = p1[1] - p2[1];
        this.b = p2[0] - p1[0];
        this.c = this.b * p1[1] + this.a * p1[0];

        const temp = { x: p1[0], y: p1[1] };
        const p1_canvas = window.cvat.translate.points.actualToCanvas([temp])[0];
        this.c_canvas = this.b * p1_canvas.y + this.a * p1_canvas.x;
    }

    // get the line equation in actual coordinates
    getY(x) {
        return (this.c - this.a * x) / this.b;
    }

    // get the line equation in canvas coordinates
    getYCanvas(x) {
        return (this.c_canvas - this.a * x) / this.b;
    }
}

class Cuboid2PointViewModel {
    constructor(points) {
        this.points = points;
        this._initEdges();
        this._initFaces();
        this.topIsClockwise = false;
        this.botIsClockwise = false;
        this.updatePoints();
        this.buildBackEdge();
    }

    getPoints() {
        return this.points;
    }

    setPoints(points) {
        this.points = points;
    }

    updatePoints() {
        this._updateVanishingPoints();
        // making sure that the edges are vertical
        this.fr.points[0].x = this.fr.points[1].x;
        this.fl.points[0].x = this.fl.points[1].x;
        this.dr.points[0].x = this.dr.points[1].x;
    }

    computeSideEdgeConstraints(edge) {
        let mid_length = this.fr.canvasPoints[1].y-this.fr.canvasPoints[0].y + EDGE_MARGIN;

        let minY = edge.canvasPoints[1].y-mid_length;
        let maxY = edge.canvasPoints[0].y+mid_length;

        const y1 = edge.points[0].y;
        const y2 = edge.points[1].y;

        const miny1 = y2 - mid_length;
        const maxy1 = y2 - MIN_EDGE_LENGTH;

        const miny2 = y1 + MIN_EDGE_LENGTH;
        const maxy2 = y1 + mid_length;

        return{
            constraint: {
	    	    minY: minY,
    		    maxY: maxY,
	        },
	        y1_range:{
                max:maxy1,
                min:miny1,
            },
            y2_range:{
                max:maxy2,
                min:miny2,
            }
        }
    }

    computeMidConstraints(){
        let left_length = this.fl.canvasPoints[1].y-this.fl.canvasPoints[0].y;
        let right_length = this.dr.canvasPoints[1].y-this.dr.canvasPoints[0].y;
        let minimum_length = Math.max(left_length,right_length) - EDGE_MARGIN;

        let minY = this.fr.canvasPoints[1].y-minimum_length;
        let maxY = this.fr.canvasPoints[0].y+minimum_length;

        const y1 = this.fl.points[0].y;
        const y2 = this.fl.points[1].y;

        const miny1 = y2 - 1000;
        const maxy1 = y2 - MIN_EDGE_LENGTH;

        const miny2 = y1 + MIN_EDGE_LENGTH;
        const maxy2 = y1 + 1000;

        return{
            constraint: {
	    	    minY: minY,
    		    maxY: maxY,
	        },
	        y1_range:{
                max:maxy1,
                min:miny1,
            },
            y2_range:{
                max:maxy2,
                min:miny2,
            }
        }

    }

    _updateVanishingPoints() {
        const leftEdge = convertToArray(this.fl.points);
        const rightEdge = convertToArray(this.dr.points);
        const midEdge = convertToArray(this.fr.points);

        this.vpl = intersection(leftEdge[0], midEdge[0], leftEdge[1], midEdge[1]);
        this.vpr = intersection(rightEdge[0], midEdge[0], rightEdge[1], midEdge[1]);
        if (this.vpl === null) {
            // shift the edge slightly to avoid edge case
            leftEdge[0][1] -= 0.001;
            leftEdge[0][0] += 0.001;
            leftEdge[1][0] += 0.001;
            this.vpl = intersection(leftEdge[0], midEdge[0], leftEdge[1], midEdge[1]);
        }
        if (this.vpr === null) {
            // shift the edge slightly to avoid edge case
            rightEdge[0][1] -= 0.001;
            rightEdge[0][0] -= 0.001;
            rightEdge[1][0] -= 0.001;
            this.vpr = intersection(leftEdge[0], midEdge[0], leftEdge[1], midEdge[1]);
        }
    }

    _initEdges() {
        this.fl = new Edge([0, 1], this);
        this.fr = new Edge([2, 3], this);
        this.dr = new Edge([4, 5], this);
        this.dl = new Edge([6, 7], this);

        this.ft = new Edge([0, 2], this);
        this.lt = new Edge([0, 6], this);
        this.rt = new Edge([2, 4], this);
        this.dt = new Edge([6, 4], this);

        this.fb = new Edge([1, 3], this);
        this.lb = new Edge([1, 7], this);
        this.rb = new Edge([3, 5], this);
        this.db = new Edge([7, 5], this);

        this.edgeList = [this.fl, this.fr, this.dl, this.dr, this.ft, this.lt,
            this.rt, this.dt, this.fb, this.lb, this.rb, this.db];
    }

    _initFaces() {
        this.front = new Figure([0, 1, 3, 2], this);
        this.right = new Figure([2, 3, 5, 4], this);
        this.dorsal = new Figure([4, 5, 7, 6], this);
        this.left = new Figure([6, 7, 1, 0], this);
        this.top = new Figure([0, 2, 4, 6], this);
        this.bot = new Figure([1, 3, 5, 7], this);

        this.facesList = [this.front, this.right, this.dorsal, this.left];
    }

    buildBackEdge() {
        this.updatePoints();
        const vp_left = this.vpl;
        const vp_right = this.vpr;

        let leftPoints = this.dr.points;
        let rightPoints = this.fl.points;

        leftPoints = convertToArray(leftPoints);
        rightPoints = convertToArray(rightPoints);

        let p1 = intersection(vp_left, leftPoints[0], vp_right, rightPoints[0]);
        let p2 = intersection(vp_left, leftPoints[1], vp_right, rightPoints[1]);

        if (p1 === null) {
            p1 = [];
            p1[0] = p2[0];
            p1[1] = vp_left[1];
        } else if (p2 === null) {
            p2 = [];
            p2[0] = p1[0];
            p2[1] = vp_left[1];
        }

        this.points[6] = { x: p1[0], y: p1[1] };
        this.points[7] = { x: p2[0], y: p2[1] };

    }

    buildBackRightEdge(){
        // this.updatePoints();
        const vp_left = this.vpl;
        const vp_right = this.vpr;

        let leftPoints = this.dl.points;
        let rightPoints = this.fr.points;

        leftPoints = convertToArray(leftPoints);
        rightPoints = convertToArray(rightPoints);

        let p1 = intersection(vp_left, leftPoints[0], vp_right, rightPoints[0]);
        let p2 = intersection(vp_left, leftPoints[1], vp_right, rightPoints[1]);

        if (p1 === null) {
            p1 = [];
            p1[0] = p2[0];
            p1[1] = vp_left[1];
        } else if (p2 === null) {
            p2 = [];
            p2[0] = p1[0];
            p2[1] = vp_left[1];
        }

        this.points[4] = { x: p1[0], y: p1[1] };
        this.points[5] = { x: p2[0], y: p2[1] };
        this.updatePoints();
    }

    get vplCanvas() {
        const { vpl } = this;
        const vp = { x: vpl[0], y: vpl[1] };
        return window.cvat.translate.points.actualToCanvas([vp])[0];
    }

    get vprCanvas() {
        const { vpr } = this;
        const vp = { x: vpr[0], y: vpr[1] };
        return window.cvat.translate.points.actualToCanvas([vp])[0];
    }
}

class Figure {
    constructor(indices, Vmodel) {
        this.indices = indices;
        this.viewmodel = Vmodel;
    }

    get points() {
        const points = [];
        for (const index of this.indices) {
            points.push(this.viewmodel.points[index]);
        }
        return points;
    }

    // sets the point for a given edge, points must be given in array form in the same ordering as the getter
    // if you only need to update a subset of the points, simply put null for the points you want to keep
    set points(newPoints) {
        const oldPoints = this.viewmodel.points;
        for (let i = 0; i < newPoints.length; i++) {
            if (newPoints[i] !== null) {
                oldPoints[this.indices[i]] = { x: newPoints[i].x, y: newPoints[i].y };
            }
        }
    }

    get canvasPoints() {
        let { points } = this;
        points = window.cvat.translate.points.actualToCanvas(points);
        return points;
    }
}

class Edge extends Figure {
    getEquation() {
        let { points } = this;
        points = convertToArray(points);
        return CuboidController.createEquation(points[0], points[1]);
    }
}

class CuboidView extends PolyShapeView {
    constructor(cuboidModel, cuboidController, svgContent, UIContent, textsScene) {
        super(cuboidModel, cuboidController, svgContent, UIContent, textsScene);
        this.model = cuboidModel;
        cuboidController.setView(this);
    }

    // runs every time the UI is redrawn
    _drawShapeUI(position) {
        let { points } = position;
        points = PolyShapeModel.convertStringToNumberArray(points);
        const { viewModel } = this.controller();
        viewModel.setPoints(points);

        this._uis.shape = this._scenes.svg.cube(viewModel).fill(this._appearance.colors.shape).attr({
            fill: this._appearance.fill || this._appearance.colors.shape,
            stroke: this._appearance.stroke || this._appearance.colors.shape,
            'stroke-width': STROKE_WIDTH / window.cvat.player.geometry.scale,
            z_order: position.z_order,
            'fill-opacity': this._appearance.fillOpacity,
        }).addClass('shape');
        this._uis.shape.projectionLineEnable = this._appearance.projectionLineEnable;
        this._controller.updateViewModel();
        this._uis.shape.addMouseOverEvents();
        this._uis.shape.paintOrientationLines()
        ShapeView.prototype._drawShapeUI.call(this);
    }

    _deselect() {
        if (this._uis.shape) {
            PolyShapeView.prototype._deselect.call(this);
            this._uis.shape.removeMouseOverEvents();
            this._uis.shape.resetFaceOpacity();
            this._uis.shape.hideProjections();
        }
    }

    _select() {
        if (this._uis.shape) {
            PolyShapeView.prototype._select.call(this);
               if(!this._controller.lock){
                   this._uis.shape.addMouseOverEvents();
                   this._uis.shape.showProjections();
               }
        }
    }

    _makeEditable() {
        if (this._uis.shape && !this._controller.lock) {
            ShapeView.prototype._makeEditable.call(this);
            this._uis.shape.selectize(false);
            this._uis.shape.showGrabPoints();
            this._controller.addEventsToCube();
            const scaledR = POINT_RADIUS / window.cvat.player.geometry.scale;
            const scaledPointStroke = SELECT_POINT_STROKE_WIDTH / window.cvat.player.geometry.scale;
            $('.svg_select_points').each(function () {
                this.instance.radius(scaledR);
                this.instance.attr('stroke-width', scaledPointStroke);
            });
        }
    }

    _setupOccludedUI(occluded) {
        if(occluded){
            this._uis.shape.addOccluded();
        }
        else{
            this._uis.shape.removeOccluded();
        }
    }

    _makeNotEditable() {
        if (this._uis.shape && this._flags.editable) {
            CuboidController.removeEventsFromCube(this._uis.shape);
            this._uis.shape.hideGrabPoints();
            PolyShapeView.prototype._makeNotEditable.call(this);
        }
    }

    updateColorSettings(settings) {
        ShapeView.prototype.updateColorSettings.call(this, settings);
        if (this._uis.shape) {
            this._appearance.projectionLineEnable = settings['projection-lines'];
            this.switchProjectionLine(settings['projection-lines']);
            this._uis.shape.paintOrientationLines();
        }
    }

    updateShapeTextPosition() {
        super.updateShapeTextPosition();
        // if (this._uis.shape && !this._controller.lock) {
        //     this._uis.shape.updateThickness();
        // }
    }

    switchProjectionLine(enable) {
        this._uis.shape.projectionLineEnable = enable;
    }

}

// Definition of the svg object
SVG.Cube = SVG.invent({
    create: 'g',
    inherit: SVG.G,
    extend: {

        constructorMethod(viewModel) {
            this.attr('points', viewModel.getPoints());
            this.projectionLineEnable = false;
            this.setupFaces(viewModel);
            this.setupEdges(viewModel);
            this.setupProjections(viewModel);
            this.setupGrabPoints();
            this.hideProjections();

            return this;
        },

        setupFaces(viewModel) {
            this.face = this.polygon(viewModel.front.canvasPoints);
            this.right = this.polygon(viewModel.right.canvasPoints);
            this.dorsal = this.polygon(viewModel.dorsal.canvasPoints);
            this.left = this.polygon(viewModel.left.canvasPoints);
        },

        setupProjections(viewModel) {
            this.ft_proj = this.line(this.updateProjectionLine(viewModel.ft.getEquation(), viewModel.ft.canvasPoints[0], viewModel.vplCanvas));
            this.fb_proj = this.line(this.updateProjectionLine(viewModel.fb.getEquation(), viewModel.ft.canvasPoints[0], viewModel.vplCanvas));
            this.rt_proj = this.line(this.updateProjectionLine(viewModel.rt.getEquation(), viewModel.rt.canvasPoints[1], viewModel.vprCanvas));
            this.rb_proj = this.line(this.updateProjectionLine(viewModel.rb.getEquation(), viewModel.rb.canvasPoints[1], viewModel.vprCanvas));

            this.ft_proj.stroke({ color: '#C0C0C0' });
            this.fb_proj.stroke({ color: '#C0C0C0' });
            this.rt_proj.stroke({ color: '#C0C0C0' });
            this.rb_proj.stroke({ color: '#C0C0C0' });
        },

        setupEdges(viewModel) {
            this.front_left_edge = this.line(viewModel.fl.canvasPoints);
            this.front_right_edge = this.line(viewModel.fr.canvasPoints);
            this.dorsal_right_edge = this.line(viewModel.dr.canvasPoints);

            this.front_top_edge = this.line(viewModel.ft.canvasPoints);
            this.right_top_edge = this.line(viewModel.rt.canvasPoints);
            this.front_bot_edge = this.line(viewModel.fb.canvasPoints);
            this.right_bot_edge = this.line(viewModel.rb.canvasPoints);

        },

        setupGrabPoints(){
            this.fl_center = this.circle().addClass("svg_select_points").addClass("svg_select_points_l");
            this.fr_center = this.circle().addClass("svg_select_points").addClass("svg_select_points_r");
            this.dr_center = this.circle().addClass("svg_select_points").addClass("svg_select_points_r");

            this.ft_center = this.circle().addClass("svg_select_points").addClass("svg_select_points_t");
            this.rt_center = this.circle().addClass("svg_select_points").addClass("svg_select_points_t");
            this.fb_center = this.circle().addClass("svg_select_points").addClass("svg_select_points_b");
            this.rb_center = this.circle().addClass("svg_select_points").addClass("svg_select_points_b");

            let grabPoints = this.getGrabPoints();
            let edges = this.getEdges();
            for(let i = 0; i<grabPoints.length;i++){
                let edge = edges[i];
                let cx = (edge.attr("x2")+edge.attr("x1"))/2;
                let cy = (edge.attr("y2")+edge.attr("y1"))/2;
                grabPoints[i].center(cx,cy);
            }
        },

        updateGrabPoints(){
            let centers = this.getGrabPoints();
            let edges = this.getEdges();
            for(let i = 0; i<centers.length;i++){
                let edge = edges[i];
                centers[i].center(edge.cx(),edge.cy());
            }
        },

        move(dx,dy) {
            this.face.dmove(dx, dy);
            this.dorsal.dmove(dx, dy);
            this.right.dmove(dx, dy);
            this.left.dmove(dx, dy);

            this.front_left_edge.dmove(dx, dy);
            this.front_right_edge.dmove(dx, dy);
            this.dorsal_right_edge.dmove(dx, dy);
            this.front_top_edge.dmove(dx, dy);
            this.right_top_edge.dmove(dx, dy);
            this.front_bot_edge.dmove(dx, dy);
            this.right_bot_edge.dmove(dx, dy);
        },

        showProjections() {
            if (this.projectionLineEnable) {
                this.ft_proj.show();
                this.fb_proj.show();
                this.rt_proj.show();
                this.rb_proj.show();
            }
        },

        hideProjections() {
            this.ft_proj.hide();
            this.fb_proj.hide();
            this.rt_proj.hide();
            this.rb_proj.hide();
        },

        showGrabPoints(){
            let grabPoints = this.getGrabPoints();
            grabPoints.forEach((point)=>{
                point.show();
            })
        },

        hideGrabPoints(){
            let grabPoints = this.getGrabPoints();
            grabPoints.forEach((point)=>{
                point.hide();
            })
        },

        updateView(viewModel) {
            const convertedPoints = window.cvat.translate.points.actualToCanvas(viewModel.getPoints());
            this.updatePolygons(viewModel);
            this.updateLines(viewModel);
            this.updateProjections(viewModel);
            this.updateGrabPoints();
            this.attr('points', convertedPoints);
        },

        updatePolygons(viewModel) {
            this.face.plot(viewModel.front.canvasPoints);
            this.right.plot(viewModel.right.canvasPoints);
            this.dorsal.plot(viewModel.dorsal.canvasPoints);
            this.left.plot(viewModel.left.canvasPoints);
        },

        updateLines(viewModel) {
            this.front_left_edge.plot(viewModel.fl.canvasPoints);
            this.front_right_edge.plot(viewModel.fr.canvasPoints);
            this.dorsal_right_edge.plot(viewModel.dr.canvasPoints);

            this.front_top_edge.plot(viewModel.ft.canvasPoints);
            this.right_top_edge.plot(viewModel.rt.canvasPoints);
            this.front_bot_edge.plot(viewModel.fb.canvasPoints);
            this.right_bot_edge.plot(viewModel.rb.canvasPoints);
        },

        updateThickness() {
            const edges = this.getEdges();
            const width = this.attr('stroke-width');
            const base_width_offset = 1.75;
            const expanded_width_offset = 3;
            edges.forEach((edge) => {
                edge.on('mouseover', function () {
                    this.attr({ 'stroke-width': width * expanded_width_offset });
                }).on('mouseout', function () {
                    this.attr({ 'stroke-width': width * base_width_offset });
                }).stroke({ width: width * base_width_offset, linecap: 'round' });
            });
        },

        updateProjections(viewModel) {
            this.ft_proj.plot(this.updateProjectionLine(viewModel.ft.getEquation(), viewModel.ft.canvasPoints[0], viewModel.vplCanvas));
            this.fb_proj.plot(this.updateProjectionLine(viewModel.fb.getEquation(), viewModel.ft.canvasPoints[0], viewModel.vplCanvas));
            this.rt_proj.plot(this.updateProjectionLine(viewModel.rt.getEquation(), viewModel.rt.canvasPoints[1], viewModel.vprCanvas));
            this.rb_proj.plot(this.updateProjectionLine(viewModel.rb.getEquation(), viewModel.rt.canvasPoints[1], viewModel.vprCanvas));
        },

        paintOrientationLines() {
            const fillColor = this.attr('fill');
            const selectedColor = '#ff007f';
            this.front_top_edge.stroke({ color: selectedColor });
            this.front_left_edge.stroke({ color: selectedColor });
            this.front_bot_edge.stroke({ color: selectedColor });
            this.front_right_edge.stroke({color: selectedColor});

            this.right_top_edge.stroke({ color: fillColor });
            this.right_bot_edge.stroke({ color: fillColor });
            this.dorsal_right_edge.stroke({ color: fillColor });
        },

        getEdges() {
            const arr = [];
            arr.push(this.front_left_edge);
            arr.push(this.front_right_edge);
            arr.push(this.dorsal_right_edge);
            arr.push(this.front_top_edge);
            arr.push(this.right_top_edge);
            arr.push(this.front_bot_edge);
            arr.push(this.right_bot_edge);
            return arr;
        },

        getGrabPoints(){
            const arr = [];
            arr.push(this.fl_center);
            arr.push(this.fr_center);
            arr.push(this.dr_center);
            arr.push(this.ft_center);
            arr.push(this.rt_center);
            arr.push(this.fb_center);
            arr.push(this.rb_center);
            return arr;
        },

        updateProjectionLine(equation, source, direction) {
            const x1 = source.x;
            const y1 = equation.getYCanvas(x1);

            const x2 = direction.x;
            const y2 = equation.getYCanvas(x2);
            return [[x1, y1], [x2, y2]];
        },

        addMouseOverEvents() {
            this._addFaceEvents();
        },

        _addFaceEvents() {
            const group = this;
            this.left.on('mouseover', function () {
                this.attr({ 'fill-opacity': 0.5 });
            }).on('mouseout', function () {
                this.attr({ 'fill-opacity': group.attr('fill-opacity') });
            });
            this.dorsal.on('mouseover', function () {
                this.attr({ 'fill-opacity': 0.5 });
            }).on('mouseout', function () {
                this.attr({ 'fill-opacity': group.attr('fill-opacity') });
            });
            this.right.on('mouseover', function () {
                this.attr({ 'fill-opacity': 0.5 });
            }).on('mouseout', function () {
                this.attr({ 'fill-opacity': group.attr('fill-opacity') });
            });
        },

        removeMouseOverEvents() {
            const edges = this.getEdges();
            edges.forEach((edge) => {
                edge.off('mouseover').off('mouseout');
            });
            this.left.off('mouseover').off('mouseout');
            this.dorsal.off('mouseover').off('mouseout');
            this.right.off('mouseover').off('mouseout');
        },

        resetFaceOpacity() {
            const group = this;
            this.left.attr({ 'fill-opacity': group.attr('fill-opacity') });
            this.dorsal.attr({ 'fill-opacity': group.attr('fill-opacity') });
            this.right.attr({ 'fill-opacity': group.attr('fill-opacity') });
        },

        addOccluded(){
            let edges = this.getEdges();
            edges.forEach((edge)=> {
                edge.node.classList.add('occludedShape');
            })
            this.face.attr('stroke-width', 0);
            this.right.attr('stroke-width', 0);
            this.left.node.classList.add('occludedShape')
            this.dorsal.node.classList.add('occludedShape')
        },

        removeOccluded(){
            let edges = this.getEdges();
            edges.forEach((edge)=> {
                edge.node.classList.remove('occludedShape');
            })
            this.face.attr('stroke-width', this.attr('stroke-width'));
            this.right.attr('stroke-width', this.attr('stroke-width'));
            this.left.node.classList.remove('occludedShape')
            this.dorsal.node.classList.remove('occludedShape')
        },
    },
    construct: {
        cube(points) {
            return this.put(new SVG.Cube()).constructorMethod(points);
        },
    },
});
