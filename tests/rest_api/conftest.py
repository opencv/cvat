# Copyright (C) 2021 Intel Corporation
#
# SPDX-License-Identifier: MIT

from subprocess import run, CalledProcessError
import pytest
import json
import os.path as osp
from .utils.config import ASSETS_DIR

cvat_db_asset = osp.join(ASSETS_DIR, 'cvat_db.sql')
cvat_data_asset = osp.join(ASSETS_DIR, 'cvat_data.tar.bz2')

def _run(command):
    try:
        run(command.split(), check=True)
    except CalledProcessError:
        pytest.exit(f"Cannot to run command: {command}")

@pytest.fixture(scope='session', autouse=True)
def init_test_db():
    _run('docker run --rm --volumes-from cvat '\
        f'--mount type=bind,source={ASSETS_DIR},target=/mnt/ ' \
        'ubuntu tar --strip 3 -C /home/django/data  -xjf /mnt/cvat_data.tar.bz2'
    )
    _run(f'docker container cp {osp.join(ASSETS_DIR, "cvat_db")} cvat_db:/')
    _run('docker exec cvat_db createdb test_db')
    _run('docker exec cvat_db pg_restore -U root -d test_db /cvat_db/cvat_db.dump')

    yield

    _run('docker exec cvat_db rm -r /cvat_db')
    _run('docker exec cvat_db dropdb test_db')

@pytest.fixture(scope='function', autouse=True)
def restore_cvat_db():
    _run('docker exec cvat_db psql -U root -d postgres -f /cvat_db/cvat_db.sql')

@pytest.fixture(scope='module')
def users():
    with open(osp.join(ASSETS_DIR, 'users.json')) as f:
        return json.load(f)['results']

@pytest.fixture(scope='module')
def organizations():
    with open(osp.join(ASSETS_DIR, 'organizations.json')) as f:
        return json.load(f)

@pytest.fixture(scope='module')
def memberships():
    with open(osp.join(ASSETS_DIR, 'memberships.json')) as f:
        return json.load(f)['results']

@pytest.fixture(scope='module')
def users_by_name(users):
    return {user['username']: user for user in users}

@pytest.fixture(scope='module')
def members(memberships):
    members = {}
    for membership in memberships:
        org = membership['organization']
        members.setdefault(org, []).append(membership['user']['username'])
    return members

@pytest.fixture(scope='module')
def users_by_group(users):
    data = {}
    for user in users:
        for group in user['groups']:
            data.setdefault(group, []).append(user)
    return data

@pytest.fixture(scope='module')
def roles_by_org(memberships):
    data = {}
    for membership in memberships:
        org = membership['organization']
        role = membership['role']
        data.setdefault(org, {}).setdefault(role, []).append({
            'username': membership['user']['username'],
            'id': membership['id']
        })
    return data

@pytest.fixture(scope='module')
def memberships_by_org(memberships):
    members = {}
    for membership in memberships:
        org = membership['organization']
        members.setdefault(org, []).append(membership)
    return members

@pytest.fixture(scope='module')
def memberships_by_role(memberships):
    members = {}
    for membership in memberships:
        role = membership['role']
        members.setdefault(role, []).append(membership)
    return members

@pytest.fixture(scope='module')
def find_users(test_db):
    def find(**kwargs):
        assert len(kwargs) > 0
        assert any(kwargs)

        data = test_db
        kwargs = dict(filter(lambda a: a[1] is not None, kwargs.items()))
        for field, value in kwargs.items():
            if field.startswith('exclude_'):
                field = field.split('_', maxsplit=1)[1]
                exclude_rows = set(v['id'] for v in
                    filter(lambda a: a[field] == value, test_db))
                data = list(filter(lambda a: a['id'] not in exclude_rows, data))
            else:
                data = list(filter(lambda a: a[field] == value, data))

        return data
    return find


@pytest.fixture(scope='module')
def test_db(users, users_by_name, memberships):
    data = []
    fields = ['username', 'id', 'privilege', 'role', 'org', 'membership_id']
    def add_row(**kwargs):
        data.append({field: kwargs.get(field) for field in fields})

    for user in users:
        for group in user['groups']:
            add_row(username=user['username'], id=user['id'], privilege=group)

    for membership in memberships:
        username = membership['user']['username']
        for group in users_by_name[username]['groups']:
            add_row(username=username, role=membership['role'], privilege=group,
                id=membership['user']['id'], org=membership['organization'],
                membership_id=membership['id'])

    return data




