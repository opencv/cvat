// Copyright (C) 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT

/// <reference types="cypress" />

import { taskName } from '../../support/const';

context('Login to task if logout from task', () => {
    const prId = '2527';
    let taskId;

    before(() => {
        cy.openTask(taskName);

        // get id task
        cy.url().then((link) => {
            taskId = Number(link.split('/').slice(-1)[0]);
        });
    });

    describe(`Testing pr "${prId}"`, () => {
        it('Logout and login via GUI', () => {
            // logout from task
            cy.get('.cvat-right-header').within(() => {
                cy.get('.cvat-header-menu-dropdown').should('have.text', Cypress.env('user')).trigger('mouseover', { which: 1 });
            });
            cy.get('span[aria-label="logout"]').click();
            cy.url().should('include', `/auth/login/?next=/tasks/${taskId}`);

            // login to task
            cy.get('[placeholder="Username"]').type(Cypress.env('user'));
            cy.get('[placeholder="Password"]').type(Cypress.env('password'));
            cy.get('[type="submit"]').click();
            cy.url()
                .should('include', `/tasks/${taskId}`)
                .and('not.include', '/auth/login/');
            cy.contains('.cvat-task-details-task-name', `${taskName}`).should('be.visible');
        });

        it('Logout and login via token', () => {
            cy.logout();

            // get token and login to task
            cy.request({
                method: 'POST',
                url: '/api/v1/auth/login',
                body: {
                    username: Cypress.env('user'),
                    email: Cypress.env('email'),
                    password: Cypress.env('password'),
                },
            }).then(async (responce) => {
                responce = await responce['headers']['set-cookie'];
                const csrfToken = responce[0].match(/csrftoken=\w+/)[0].replace('csrftoken=', '');
                const sessionId = responce[1].match(/sessionid=\w+/)[0].replace('sessionid=', '');
                cy.visit(`/login-with-token/${sessionId}/${csrfToken}?next=/tasks/${taskId}`)
                cy.contains('.cvat-task-details-task-name', `${taskName}`).should('be.visible');
            });
        });
    });
});
