// Copyright (C) 2021 Intel Corporation
//
// SPDX-License-Identifier: MIT

const { checkObjectType, isEnum } = require('./common');
const { MembershipRole } = require('./enums');
const { ArgumentError } = require('./exceptions');
const PluginRegistry = require('./plugins');
const serverProxy = require('./server-proxy');
const User = require('./user');

/**
 * Class representing an organization
 * @memberof module:API.cvat.classes
 */
class Organization {
    /**
     * @param {object} initialData - Object which is used for initialization
     * <br> It must contains keys:
     * <br> <li style="margin-left: 10px;"> slug

     * <br> It can contains keys:
     * <br> <li style="margin-left: 10px;"> name
     * <br> <li style="margin-left: 10px;"> description
     */
    constructor(initialData) {
        const data = {
            id: undefined,
            slug: undefined,
            name: undefined,
            description: undefined,
            created_date: undefined,
            updated_date: undefined,
            company: undefined,
            email: undefined,
            owner: undefined,
            location: undefined,
        };

        for (const prop of Object.keys(data)) {
            if (prop in initialData) {
                data[prop] = initialData[prop];
            }
        }

        if (data.owner) data.owner = new User(data.owner);

        checkObjectType('slug', data.slug, 'string');
        if (typeof data.name !== 'undefined') {
            checkObjectType('name', data.name, 'string');
        }

        if (typeof data.description !== 'undefined') {
            checkObjectType('description', data.description, 'string');
        }

        if (typeof data.id !== 'undefined') {
            checkObjectType('id', data.id, 'number');
        }

        if (typeof data.company !== 'undefined') {
            checkObjectType('company', data.company, 'string');
        }

        if (typeof data.email !== 'undefined') {
            checkObjectType('email', data.email, 'string');
        }

        if (typeof data.location !== 'undefined') {
            checkObjectType('location', data.location, 'string');
        }

        if (typeof data.owner !== 'undefined') {
            checkObjectType('owner', data.owner, null, User);
        }

        Object.defineProperties(this, {
            id: {
                get: () => data.id,
            },
            slug: {
                get: () => data.slug,
            },
            name: {
                get: () => data.name,
                set: (name) => {
                    if (typeof name !== 'string') {
                        throw ArgumentError(`Name property must be a string, tried to set ${typeof description}`);
                    }
                    data.name = name;
                },
            },
            description: {
                get: () => data.description,
                set: (description) => {
                    if (typeof description !== 'string') {
                        throw ArgumentError(
                            `Description property must be a string, tried to set ${typeof description}`,
                        );
                    }
                    data.description = description;
                },
            },
            company: {
                get: () => data.company,
                set: (company) => {
                    if (typeof company !== 'string') {
                        throw ArgumentError(`Company property must be a string, tried to set ${typeof company}`);
                    }
                    data.company = company;
                },
            },
            email: {
                get: () => data.email,
                set: (email) => {
                    if (typeof email !== 'string') {
                        throw ArgumentError(`Email property must be a string, tried to set ${typeof email}`);
                    }
                    data.email = email;
                },
            },
            location: {
                get: () => data.location,
                set: (location) => {
                    if (typeof location !== 'string') {
                        throw ArgumentError(`Location property must be a string, tried to set ${typeof location}`);
                    }
                    data.location = location;
                },
            },
            owner: {
                get: () => data.owner,
            },
            createdDate: {
                get: () => data.created_date,
            },
            updatedDate: {
                get: () => data.updated_date,
            },
        });
    }

    /**
     * Method updates organization data if it was created before, or creates a new organization
     * @method save
     * @returns {module:API.cvat.classes.Organization}
     * @memberof module:API.cvat.classes.Organization
     * @readonly
     * @instance
     * @async
     * @throws {module:API.cvat.exceptions.ServerError}
     * @throws {module:API.cvat.exceptions.PluginError}
     */
    async save() {
        const result = await PluginRegistry.apiWrapper.call(this, Organization.prototype.save);
        return result;
    }

    /**
     * Method returns paginatable list of organization members
     * @method save
     * @returns {module:API.cvat.classes.Organization}
     * @param page page number
     * @param page_size number of results per page
     * @memberof module:API.cvat.classes.Organization
     * @readonly
     * @instance
     * @async
     * @throws {module:API.cvat.exceptions.ServerError}
     * @throws {module:API.cvat.exceptions.PluginError}
     * @throws {module:API.cvat.exceptions.ArgumentError}
     */
    async members(page = 1, page_size = 10) {
        const result = await PluginRegistry.apiWrapper.call(
            this,
            Organization.prototype.members,
            this.slug,
            page,
            page_size,
        );
        return result;
    }

    /**
     * Method removes the organization
     * @method remove
     * @returns {module:API.cvat.classes.Organization}
     * @memberof module:API.cvat.classes.Organization
     * @readonly
     * @instance
     * @async
     * @throws {module:API.cvat.exceptions.ServerError}
     * @throws {module:API.cvat.exceptions.PluginError}
     */
    async remove() {
        const result = await PluginRegistry.apiWrapper.call(this, Organization.prototype.remove);
        return result;
    }

    /**
     * Method invites new members by email
     * @method invite
     * @returns {module:API.cvat.classes.Organization}
     * @param {string} email
     * @param {string} role
     * @memberof module:API.cvat.classes.Organization
     * @readonly
     * @instance
     * @async
     * @throws {module:API.cvat.exceptions.ArgumentError}
     * @throws {module:API.cvat.exceptions.ServerError}
     * @throws {module:API.cvat.exceptions.PluginError}
     */
    async invite(email, role) {
        const result = await PluginRegistry.apiWrapper.call(this, Organization.prototype.invite, email, role);
        return result;
    }

    /**
     * Method allows a user to get out from an organization
     * The difference between deleteMembership is that membershipId is unknown in this case
     * @method leave
     * @returns {module:API.cvat.classes.Organization}
     * @memberof module:API.cvat.classes.Organization
     * @param {module:API.cvat.classes.User} user
     * @readonly
     * @instance
     * @async
     * @throws {module:API.cvat.exceptions.ServerError}
     * @throws {module:API.cvat.exceptions.ArgumentError}
     * @throws {module:API.cvat.exceptions.PluginError}
     */
    async leave(user) {
        const result = await PluginRegistry.apiWrapper.call(this, Organization.prototype.leave, user);
        return result;
    }

    /**
     * Method allows to change a membership role
     * @method updateMembership
     * @returns {module:API.cvat.classes.Organization}
     * @param {number} membershipId
     * @param {string} role
     * @memberof module:API.cvat.classes.Organization
     * @readonly
     * @instance
     * @async
     * @throws {module:API.cvat.exceptions.ArgumentError}
     * @throws {module:API.cvat.exceptions.ServerError}
     * @throws {module:API.cvat.exceptions.PluginError}
     */
    async updateMembership(membershipId, role) {
        const result = await PluginRegistry.apiWrapper.call(
            this,
            Organization.prototype.updateMembership,
            membershipId,
            role,
        );
        return result;
    }

    /**
     * Method allows to kick a user from an organization
     * @method deleteMembership
     * @returns {module:API.cvat.classes.Organization}
     * @param {number} membershipId
     * @memberof module:API.cvat.classes.Organization
     * @readonly
     * @instance
     * @async
     * @throws {module:API.cvat.exceptions.ArgumentError}
     * @throws {module:API.cvat.exceptions.ServerError}
     * @throws {module:API.cvat.exceptions.PluginError}
     */
    async deleteMembership(membershipId) {
        const result = await PluginRegistry.apiWrapper.call(
            this,
            Organization.prototype.deleteMembership,
            membershipId,
        );
        return result;
    }
}

Organization.prototype.save.implementation = async function () {
    if (typeof this.id === 'number') {
        // TODO: patch data
        return this;
    }

    const organizationData = {
        slug: this.slug,
        name: this.name || this.slug,
        description: this.description,
    };

    const result = await serverProxy.organizations.create(organizationData);
    return new Organization(result);
};

Organization.prototype.members.implementation = async function (orgSlug, page, pageSize) {
    checkObjectType('orgSlug', orgSlug, 'string');
    checkObjectType('page', page, 'number');
    checkObjectType('pageSize', pageSize, 'number');

    const result = await serverProxy.organizations.members(orgSlug, page, pageSize);
    return result.results;
};

Organization.prototype.remove.implementation = async function () {
    if (typeof this.id === 'number') {
        await serverProxy.organizations.delete(this.id);
    }
};

Organization.prototype.invite.implementation = async function (email, role) {
    checkObjectType('email', email, 'string');
    if (!isEnum.bind(MembershipRole)(role)) {
        throw new ArgumentError(`Role must be one of: ${Object.values(MembershipRole).toString()}`);
    }

    if (typeof this.id === 'number') {
        await serverProxy.organizations.invite(this.id, { email, role });
    }
};

Organization.prototype.updateMembership.implementation = async function (membershipId, role) {
    checkObjectType('membershipId', membershipId, 'number');
    if (!isEnum.bind(MembershipRole)(role)) {
        throw new ArgumentError(`Role must be one of: ${Object.values(MembershipRole).toString()}`);
    }

    if (typeof this.id === 'number') {
        await serverProxy.organizations.updateMembership(membershipId, { role });
    }
};

Organization.prototype.deleteMembership.implementation = async function (membershipId) {
    checkObjectType('membershipId', membershipId, 'number');
    if (typeof this.id === 'number') {
        await serverProxy.organizations.deleteMembership(membershipId);
    }
};

Organization.prototype.leave.implementation = async function (user) {
    checkObjectType('user', user, null, User);
    if (typeof this.id === 'number') {
        // TODO: find membership for the user
        // TODO: remove it from the
        // await serverProxy.organizations.deleteMembership(membershipId);
    }
};

module.exports = Organization;
