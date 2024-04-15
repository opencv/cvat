// Copyright (C) 2023-2024 CVAT.ai Corporation
//
// SPDX-License-Identifier: MIT

/// <reference types="cypress" />

context('Count total annotation, issues and labels', () => {
    const taskName = 'Count_Annotations';

    let taskID = null;
    let jobID = null;

    const issueId = '4662';
    const createRectangleShape2Points = {
        points: 'By 2 Points',
        type: 'Shape',
        labelName: 'label',
        firstX: 250,
        firstY: 350,
        secondX: 350,
        secondY: 450,
    };

    before(() => {
        cy.visit('auth/login');
        cy.login();
        cy.url().should('contain', '/tasks');
        cy.headlessCreateTask({
            labels: [{ name: 'label', attributes: [], type: 'any' }],
            name: taskName,
            project_id: null,
            source_storage: { location: 'local' },
            target_storage: { location: 'local' },
        }, {
            server_files: ['road4.png'],
            image_quality: 70,
            use_zip_chunks: true,
            use_cache: true,
            sorting_method: 'lexicographical',
        }).then((response) => {
            taskID = response.taskID;
            [jobID] = response.jobIDs;
            cy.intercept('GET', `/tasks/${taskID}/jobs/${jobID}`).as('visitAnnotationView');
            cy.visit(`/tasks/${taskID}/jobs/${jobID}`);
            cy.wait('@visitAnnotationView');
            cy.get('.cvat-canvas-container').should('exist').and('be.visible');
        });
    });

    after(() => {
        cy.logout();
        cy.getAuthKey().then((response) => {
            const authKey = response.body.key;
            cy.request({
                method: 'DELETE',
                url: `/api/tasks/${taskID}`,
                headers: {
                    Authorization: `Token ${authKey}`,
                },
            });
        });
    });

    describe(`Testing issue ${issueId}`, () => {
        it('Count Annotations', () => {
            for (let i = 0; i < 3; i++) {
                cy.createRectangle(createRectangleShape2Points);
            }
            cy.get('.cvat-objects-sidebar-states-header')
                .find('span.ant-typography')
                .first()
                .should('exist')
                .and('be.visible')
                .and('have.text', 'Items: 3');
        });

        it('Count Labels', () => {
            cy.get('[role="tab"]').eq(1).should('exist').and('be.visible').and('have.text', 'Labels').click();
            cy.get('.cvat-objects-sidebar-labels-list-header').should('exist').and('be.visible').and('have.text', 'Items: 1');
        });

        it('Count Issues', () => {
            cy.get('.cvat-workspace-selector').should('exist').and('be.visible').click();
            cy.get('[title="Review"]').should('exist').and('be.visible').click();
            cy.get('.cvat-issue-control').should('exist').and('be.visible').click();
            cy.get('#cvat_canvas_content').should('exist').click();
            cy.get('body').type('issue 1');
            cy.get('[type="submit"]').should('exist').and('be.visible').click();
            cy.get('[role="tab"]').eq(2).should('exist').and('be.visible').and('have.text', 'Issues').click();
            cy.get('.cvat-objects-sidebar-issues-list-header').should('exist').and('be.visible').and('have.text', 'Items: 1');
        });
    });
});
