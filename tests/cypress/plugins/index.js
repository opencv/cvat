// Copyright (C) 2020-2022 Intel Corporation
//
// SPDX-License-Identifier: MIT

/// <reference types="cypress" />
const fs = require('fs');
// eslint-disable-next-line import/no-extraneous-dependencies
const { isFileExist } = require('cy-verify-downloads');
const { imageGenerator } = require('./imageGenerator/addPlugin');
const { createZipArchive } = require('./createZipArchive/addPlugin');
const { compareImages } = require('./compareImages/addPlugin');
const { unpackZipArchive } = require('./unpackZipArchive/addPlugin');

// eslint-disable-next-line import/order,import/no-extraneous-dependencies
const cucumber = require('cypress-cucumber-preprocessor').default;

module.exports = async (on, config) => {
    // eslint-disable-next-line import/no-extraneous-dependencies
    require('@cypress/code-coverage/task')(on, config);
    on('task', { imageGenerator });
    on('task', { createZipArchive });
    on('task', { compareImages });
    on('task', { unpackZipArchive });
    on('task', {
        log(message) {
            console.log(message);
            return null;
        },
    });
    on('task', {
        listFiles(folderName) {
            // eslint-disable-next-line security/detect-non-literal-fs-filename
            return fs.readdirSync(folderName);
        },
    });
    on('task', { isFileExist });
    // Try to resolve "Cypress failed to make a connection to the Chrome DevTools Protocol"
    // https://github.com/cypress-io/cypress/issues/7450
    on('before:browser:launch', (browser, launchOptions) => {
        if (browser.name === 'chrome') {
            if (browser.isHeadless) {
                launchOptions.args.push('--disable-gpu');
            }
        }
        return launchOptions;
    });
    on('file:preprocessor', cucumber());
    return config;
};
