// Copyright (C) 2021-2022 Intel Corporation
//
// SPDX-License-Identifier: MIT

/// <reference types="cypress" />

import { taskName, labelName } from '../../support/const_canvas3d';

context('Canvas 3D functionality. Dump/upload annotation. "Velodyne Points" format.', () => {
    const caseId = '92';
    const cuboidCreationParams = {
        labelName,
    };
    const dumpTypeVC = 'Kitti Raw Format';
    let annotationVCArchiveName = '';
    let annotationVCArchiveNameCustomeName = '';

    function confirmUpdate(modalWindowClassName) {
        cy.get(modalWindowClassName).should('be.visible').within(() => {
            cy.contains('button', 'Update').click();
        });
    }

    function uploadAnnotation(format, file, confirmModalClassName) {
        cy.get('.cvat-modal-import-dataset').should('be.visible');
        cy.get('.cvat-modal-import-select').click();
        cy.contains('.cvat-modal-import-dataset-option-item', format).click();
        cy.get('.cvat-modal-import-select').should('contain.text', format);
        cy.get('input[type="file"]').attachFile(file, { subjectType: 'drag-n-drop' });
        cy.get(`[title="${file}"]`).should('be.visible');
        cy.contains('button', 'OK').click();
        confirmUpdate(confirmModalClassName);
        cy.get('.cvat-notification-notice-import-annotation-start').should('be.visible');
        cy.closeNotification('.cvat-notification-notice-import-annotation-start');
    }

    before(() => {
        cy.openTask(taskName);
        cy.openJob();
        cy.wait(1000); // Waiting for the point cloud to display
        cy.create3DCuboid(cuboidCreationParams);
        cy.saveJob('PATCH', 200, 'saveJob');
    });

    describe(`Testing case "${caseId}"`, () => {
        it('Export with "Velodyne Points" format.', () => {
            const exportAnnotation = {
                as: 'exportAnnotations',
                type: 'annotations',
                format: dumpTypeVC,
            };
            cy.exportTask(exportAnnotation);
            cy.getDownloadFileName().then((file) => {
                annotationVCArchiveName = file;
                cy.verifyDownload(annotationVCArchiveName);
            });
            cy.verifyNotification();
        });

        it('Export with "Point Cloud" format. Renaming the archive', () => {
            const exportAnnotationRenameArchive = {
                as: 'exportAnnotationsRenameArchive',
                type: 'annotations',
                format: dumpTypeVC,
                archiveCustomeName: 'task_export_3d_annotation_custome_name_vc_format',
            };
            cy.exportTask(exportAnnotationRenameArchive);
            cy.getDownloadFileName().then((file) => {
                annotationVCArchiveNameCustomeName = file;
                cy.verifyDownload(annotationVCArchiveNameCustomeName);
            });
            cy.verifyNotification();
            cy.removeAnnotations();
            cy.saveJob('PUT');
            cy.get('#cvat-objects-sidebar-state-item-1').should('not.exist');
        });

        it('Upload "Velodyne Points" format annotation to job.', () => {
            cy.interactMenu('Upload annotations');
            uploadAnnotation(
                dumpTypeVC.split(' ')[0],
                annotationVCArchiveName,
                '.cvat-modal-content-load-job-annotation'
            );
            cy.intercept('GET', '/api/jobs/**/annotations**').as('uploadAnnotationsGet');
            cy.wait('@uploadAnnotationsGet').its('response.statusCode').should('equal', 200);
            cy.contains('Annotations have been loaded').should('be.visible');
            cy.closeNotification('.ant-notification-notice-info');
            cy.get('#cvat-objects-sidebar-state-item-1').should('exist');
            cy.removeAnnotations();
            cy.get('button').contains('Save').click().trigger('mouseout');
        });

        it('Upload annotation to task.', () => {
            cy.goToTaskList();
            cy.contains('.cvat-item-task-name', taskName)
                .parents('.cvat-tasks-list-item')
                .find('.cvat-menu-icon')
                .trigger('mouseover');
            cy.contains('Upload annotations').click();
            uploadAnnotation(
                dumpTypeVC.split(' ')[0],
                annotationVCArchiveNameCustomeName,
                '.cvat-modal-content-load-task-annotation'
            );
            cy.contains('Annotations have been loaded').should('be.visible');
            cy.closeNotification('.ant-notification-notice-info');
            cy.openTaskJob(taskName);
            cy.get('#cvat-objects-sidebar-state-item-1').should('exist');
            cy.removeAnnotations();
            cy.get('button').contains('Save').click().trigger('mouseout');
        });
    });
});
