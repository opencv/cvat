// Copyright (C) 2021 Intel Corporation
//
// SPDX-License-Identifier: MIT

/// <reference types="cypress" />

import { labelName, taskName } from '../../support/const';

context('Rotated bounding boxes.', () => {
    const caseId = '108';
    const createRectangleShape2Points = {
        points: 'By 2 Points',
        type: 'Shape',
        labelName,
        firstX: 250,
        firstY: 350,
        secondX: 350,
        secondY: 450,
    };
    const createRectangleTrack2Points = {
        points: 'By 2 Points',
        type: 'Track',
        labelName,
        firstX: createRectangleShape2Points.firstX,
        firstY: createRectangleShape2Points.firstY - 150,
        secondX: createRectangleShape2Points.secondX,
        secondY: createRectangleShape2Points.secondY - 150,
    };

    let transformMatrixShape;

    function testShapeRorate(shape, x, y, expectedRorate, shift) {
        cy.get(shape)
            .trigger('mousemove')
            .trigger('mouseover')
            .should('have.class', 'cvat_canvas_shape_activated');
        cy.get('.svg_select_points_rot')
            .should('be.visible')
            .and('have.length', 1)
            .trigger('mousemove')
            .trigger('mouseover')
            .trigger('mousedown', { button: 0 });
        if (shift) {
            cy.get('.cvat-canvas-container').trigger('mousemove', x, y, { shiftKey: true });
        } else {
            cy.get('.cvat-canvas-container').trigger('mousemove', x, y);
        }
        cy.get('#cvat_canvas_text_content').should('contain.text', expectedRorate);
        cy.get('.cvat-canvas-container').trigger('mouseup');
        cy.get(shape).should('have.attr', 'transform');
    }

    before(() => {
        cy.openTask(taskName);
        cy.openJob();
        Cypress.config('scrollBehavior', false);
        cy.createRectangle(createRectangleShape2Points);
        cy.createRectangle(createRectangleTrack2Points);
    });

    describe(`Testing case "${caseId}"`, () => {
        it('Check that bounding boxes can be rotated.', () => {
            testShapeRorate('#cvat_canvas_shape_1', 350, 150, '11.4°');
            testShapeRorate('#cvat_canvas_shape_2', 350, 150, '26.6°');
            cy.get('#cvat_canvas_shape_2').then((shape2) => {
                transformMatrixShape = shape2.attr('transform');
            });
        });

        it('Check interpolation, merging/splitting rotated shapes.', () => {
            // Check track roration on all frames
            for (let frame = 1; frame < 10; frame++) {
                cy.goToNextFrame(frame);
                cy.get('#cvat_canvas_shape_2').should('have.attr', 'transform', transformMatrixShape);
            }
            // Merge tracks
            cy.get('.cvat-merge-control').click();
            cy.get('#cvat_canvas_shape_2').click();
            cy.get('body').type('m');

            testShapeRorate('#cvat_canvas_shape_2', 350, 250, '91.9°');

            for (let frame = 8; frame >= 1; frame--) {
                cy.goToPreviousFrame(frame);
                cy.get('#cvat_canvas_shape_2').should('have.attr', 'transform').and('not.equal', transformMatrixShape);
            }
            cy.goCheckFrameNumber(2);

            // Split tracks
            cy.get('.cvat-split-track-control').click();
            // A single click does not reproduce the split a track scenario in cypress test.
            cy.get('#cvat_canvas_shape_2').click().click();
            cy.get('#cvat_canvas_shape_3').should('have.attr', 'transform').then((shapeTranform) => {
                cy.get('#cvat_canvas_shape_4').should('have.attr', 'transform', shapeTranform);
            });
        });

        it('Check rotation with hold Shift button.', () => {
            cy.goCheckFrameNumber(0);
            testShapeRorate('#cvat_canvas_shape_1', 350, 150, '13.0°', true);
        });
    });
});
