// Copyright (C) 2020-2021 Intel Corporation
//
// SPDX-License-Identifier: MIT

/// <reference types="cypress" />

context('Create task with tus file', () => {
    const caseId = '112';
    const labelName = `Case ${caseId}`;
    const taskName = `New annotation task for ${labelName}`;
    const attrName = `Attr for ${labelName}`;
    const textDefaultValue = 'Some default value for type Text';
    const imagesCount = 1;
    const imageFileName = `image_${labelName.replace(' ', '_').toLowerCase()}`;
    const width = 1920;
    const height = 1080;
    const posX = 10;
    const posY = 10;
    const color = 'gray';
    const archiveName = `${imageFileName}.zip`;
    const archivePath = `cypress/fixtures/${archiveName}`;
    const imagesFolder = `cypress/fixtures/${imageFileName}`;
    const directoryToArchive = imagesFolder;
    const zipLevel = 0;
    const extension = 'bmp';

    before(() => {
        cy.visit('auth/login');
        cy.login();
        cy.imageGenerator(imagesFolder, imageFileName, width, height, color, posX,
            posY, labelName, imagesCount, extension);
        cy.createZipArchive(directoryToArchive, archivePath, zipLevel);
    });

    describe(`Testing "${labelName}"`, () => {
        it('Create a task with 5mb upload chunk size', () => {
            const win = cy.state('window');
            win.cvat.config.uploadChunkSize = 5;
            cy.createAnnotationTask(taskName, labelName, attrName, textDefaultValue, archiveName)
                .then(() => { win.cvat.config.uploadChunkSize = 100; });
        });

        it('Check if task exist', () => {
            cy.goToTaskList();
            cy.contains('.cvat-item-task-name', taskName).should('exist');
        });
    });
});
