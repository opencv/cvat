// Copyright (C) 2020-2021 Intel Corporation
//
// SPDX-License-Identifier: MIT

/// <reference types="cypress" />

import { taskName, labelName } from '../../support/const';

context('Object make a copy.', () => {
    const caseId = '37';
    const rectangleShape2Points = {
        points: 'By 2 Points',
        type: 'Shape',
        labelName: labelName,
        firstX: 100,
        firstY: 100,
        secondX: 150,
        secondY: 150,
    };
    const createCuboidShape2Points = {
        points: 'From rectangle',
        type: 'Shape',
        labelName: labelName,
        firstX: 200,
        firstY: 100,
        secondX: 250,
        secondY: 150,
    };
    const createPolygonShape = {
        reDraw: false,
        type: 'Shape',
        labelName: labelName,
        pointsMap: [
            { x: 300, y: 100 },
            { x: 350, y: 100 },
            { x: 350, y: 150 },
        ],
        complete: true,
        numberOfPoints: null,
    };
    const createPolylinesShape = {
        type: 'Shape',
        labelName: labelName,
        pointsMap: [
            { x: 400, y: 100 },
            { x: 450, y: 100 },
            { x: 450, y: 150 },
        ],
        complete: true,
        numberOfPoints: null,
    };
    const createPointsShape = {
        type: 'Shape',
        labelName: labelName,
        pointsMap: [{ x: 500, y: 100 }],
        complete: true,
        numberOfPoints: null,
    };
    const countObject = 5;

    function checkObjectArrSize(expectedValue) {
        cy.get('.cvat_canvas_shape').then(($cvatCanvasShape) => {
            cy.get('.cvat-objects-sidebar-state-item').then(($cvatObjectsSidebarStateItem) => {
                expect($cvatCanvasShape.length).be.equal(expectedValue);
                expect($cvatObjectsSidebarStateItem.length).be.equal(expectedValue);
            });
        });
    }

    function compareObjectsAttr(object1, object2) {
        cy.get(object1).then(($cvatCanvasShape1) => {
            cy.get(object2).then(($cvatCanvasShape2) => {
                expect($cvatCanvasShape1.attr('stroke')).be.eq($cvatCanvasShape2.attr('stroke'));
                expect($cvatCanvasShape1.attr('fill')).be.eq($cvatCanvasShape2.attr('fill'));
            });
        });
    }

    function compareObjectsSidebarAttr(objectSidebar1, objectSidebar2) {
        cy.get(objectSidebar1).then(($cvatObjectsSidebarStateItem1) => {
            cy.get(objectSidebar2).then(($cvatObjectsSidebarStateItem2) => {
                expect($cvatObjectsSidebarStateItem1.attr('style')).be.eq($cvatObjectsSidebarStateItem2.attr('style'));
            });
        });
    }

    before(() => {
        cy.openTaskJob(taskName);
        cy.createRectangle(rectangleShape2Points);
        cy.createCuboid(createCuboidShape2Points);
        cy.createPolygon(createPolygonShape);
        cy.createPolyline(createPolylinesShape);
        cy.createPoint(createPointsShape);
    });

    describe(`Testing case "${caseId}"`, () => {
        it('Make a copy via sidebar.', () => {
            let coordX = 100;
            let coordY = 300;
            for (let id = 1; id < countObject + 1; id++) {
                cy.get(`#cvat-objects-sidebar-state-item-${id}`).within(() => {
                    cy.get('[aria-label="more"]').trigger('mouseover').wait(300); // Wait dropdown menu transition
                });
                cy.get('.cvat-object-item-menu').last().should('be.visible').contains('button', 'Make a copy').click(); // Get the tast element from cvat-object-item-menu array
                cy.get('.cvat-canvas-container').click(coordX, coordY);
                cy.get('.cvat-canvas-container').click();
                coordX += 100;
            }
        });

        it('After copying via sidebar, the attributes of the objects are the same.', () => {
            checkObjectArrSize(10);
            for (let id = 6; id < 11; id++) {
                compareObjectsAttr('#cvat_canvas_shape_1', `#cvat_canvas_shape_${id}`);
                compareObjectsSidebarAttr(
                    '#cvat-objects-sidebar-state-item-1',
                    `#cvat-objects-sidebar-state-item-${id}`,
                );
            }
        });

        it('Make a copy via object context menu.', () => {
            let coordX = 100;
            let coordY = 400;
            for (let id = 1; id < countObject; id++) {
                // Point doesn't have a context menu
                if (id === 4) {
                    cy.get(`#cvat_canvas_shape_${id}`)
                        .trigger('mousemove', 'top')
                        .should('have.class', 'cvat_canvas_shape_activated')
                        .rightclick('right'); // When click in the center of polyline: is being covered by another element: <svg xmlns="http://www.w3.org/2000/svg" ...
                } else {
                    cy.get(`#cvat_canvas_shape_${id}`)
                        .trigger('mousemove', 'top')
                        .should('have.class', 'cvat_canvas_shape_activated')
                        .rightclick();
                }
                cy.get('.cvat-canvas-context-menu')
                    .last()
                    .should('be.visible')
                    .find('[aria-label="more"]')
                    .trigger('mouseover')
                    .wait(300); // Wait dropdown menu transition;
                cy.get('.cvat-object-item-menu').last().should('be.visible').contains('button', 'Make a copy').click(); // Get the tast element from cvat-object-item-menu array
                cy.get('.cvat-canvas-container').click(coordX, coordY);
                cy.get('.cvat-canvas-container').click(); // Deactivate all objects and hide context menu
                coordX += 100;
            }
        });

        it('After copying via object context menu, the attributes of the objects are the same.', () => {
            checkObjectArrSize(14); // The point was not copied via the object's context menu
            for (let id = 11; id < 15; id++) {
                compareObjectsAttr('#cvat_canvas_shape_1', `#cvat_canvas_shape_${id}`);
                compareObjectsSidebarAttr(
                    '#cvat-objects-sidebar-state-item-1',
                    `#cvat-objects-sidebar-state-item-${id}`,
                );
            }
        });
    });
});
