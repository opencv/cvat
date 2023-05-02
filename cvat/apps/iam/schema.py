# Copyright (C) 2022 Intel Corporation
# Copyright (C) 2022 CVAT.ai Corporation
#
# SPDX-License-Identifier: MIT

import re
import textwrap
from drf_spectacular.openapi import AutoSchema
from drf_spectacular.extensions import OpenApiFilterExtension, OpenApiAuthenticationExtension
from drf_spectacular.authentication import TokenScheme, SessionScheme
from drf_spectacular.plumbing import build_parameter_type
from drf_spectacular.utils import OpenApiParameter

# https://drf-spectacular.readthedocs.io/en/latest/customization.html?highlight=OpenApiFilterExtension#step-5-extensions
class OrganizationFilterExtension(OpenApiFilterExtension):
    """
    Describe OrganizationFilterBackend filter
    """

    target_class = 'cvat.apps.iam.filters.OrganizationFilterBackend'
    priority = 1

    def get_schema_operation_parameters(self, auto_schema, *args, **kwargs):
        """Describe query parameters"""
        return [
            build_parameter_type(
                name=self.target.organization_slug,
                required=False,
                location=OpenApiParameter.QUERY,
                description=self.target.organization_slug_description,
                schema={'type': 'string'},
            ),
            build_parameter_type(
                name=self.target.organization_id,
                required=False,
                location=OpenApiParameter.QUERY,
                description=self.target.organization_id_description,
                schema={'type': 'integer'},
            ),
            build_parameter_type(
                name='X-Organization',
                required=False,
                location=OpenApiParameter.HEADER,
                schema={'type': 'string'},
            )
        ]

class SignatureAuthenticationScheme(OpenApiAuthenticationExtension):
    """
    Adds the signature auth method to schema
    """

    target_class = 'cvat.apps.iam.authentication.SignatureAuthentication'
    name = 'signatureAuth'  # name used in the schema

    def get_security_definition(self, auto_schema):
        return {
            'type': 'apiKey',
            'in': 'query',
            'name': 'sign',
            'description': 'Can be used to share URLs to private links',
        }

class TokenAuthenticationScheme(TokenScheme):
    """
    Adds the token auth method to schema. The description includes extra info
    comparing to what is generated by default.
    """

    name = 'tokenAuth'
    priority = 0
    match_subclasses = True

    def get_security_requirement(self, auto_schema):
        # These schemes must be used together
        return {'sessionAuth': [], 'csrfAuth': [], self.name: []}

    def get_security_definition(self, auto_schema):
        schema = super().get_security_definition(auto_schema)
        schema['x-token-prefix'] = self.target.keyword
        schema['description'] = textwrap.dedent(f"""
            To authenticate using a token (or API key), you need to have 3 components in a request:
            - the 'sessionid' cookie
            - the 'csrftoken' cookie or 'X-CSRFTOKEN' header
            - the 'Authentication' header with the '{self.target.keyword} ' prefix

            You can obtain an API key (the token) from the server response on
            the basic auth request.
        """)
        return schema

class CookieAuthenticationScheme(SessionScheme):
    """
    This class adds csrftoken cookie into security sections. It must be used together with
    the 'sessionid' cookie.
    """

    name = ['sessionAuth', 'csrfAuth']
    priority = 0

    def get_security_requirement(self, auto_schema):
        # These schemes cannot be used separately
        return None

    def get_security_definition(self, auto_schema):
        sessionid_schema = super().get_security_definition(auto_schema)
        csrftoken_schema = {
            'type': 'apiKey',
            'in': 'cookie',
            'name': 'csrftoken',
            'description': 'Can be sent as a cookie or as the X-CSRFTOKEN header'
        }
        return [sessionid_schema, csrftoken_schema]

class CustomAutoSchema(AutoSchema):
    def get_operation_id(self):
        tokenized_path = self._tokenize_path()
        # replace dashes as they can be problematic later in code generation
        tokenized_path = [t.replace('-', '_') for t in tokenized_path]

        if self.method == 'GET' and self._is_list_view():
            action = 'list'
        else:
            action = self.method_mapping[self.method.lower()]

        if not tokenized_path:
            tokenized_path.append('root')

        if re.search(r'<drf_format_suffix\w*:\w+>', self.path_regex):
            tokenized_path.append('formatted')

        return '_'.join([tokenized_path[0]] + [action] + tokenized_path[1:])
