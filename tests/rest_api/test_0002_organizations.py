# Copyright (C) 2021 Intel Corporation
#
# SPDX-License-Identifier: MIT

from http import HTTPStatus
import pytest
from .utils.config import get_method
from deepdiff import DeepDiff

class TestGetOrganizations:
    _ORG = 2

    @pytest.mark.parametrize('privilege, role, is_member, is_allow', [
        ('admin',    None,         None,  True),
        ('user',     None,         False, False),
        ('business', None,         False, False),
        ('worker',   None,         False, False),
        (None,       'owner',      True,  True),
        (None,       'maintainer', True,  True),
        (None,       'worker',     True,  True),
        (None,       'supervisor', True,  True),
    ])
    def test_can_see_specific_organization(self, privilege, role, is_member,
            is_allow, find_users, organizations):
        exclude_org = None if is_member else self._ORG
        org = self._ORG if is_member else None
        user = find_users(privilege=privilege, role=role, org=org,
            exclude_org=exclude_org)[0]['username']

        response = get_method(user, f'organizations/{self._ORG}')
        if is_allow:
            assert response.status_code == HTTPStatus.OK
            assert DeepDiff(organizations(self._ORG), response.json()) == {}
        else:
            assert response.status_code == HTTPStatus.NOT_FOUND