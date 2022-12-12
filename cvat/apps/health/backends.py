# Copyright (C) 2022 CVAT.ai Corporation
#
# SPDX-License-Identifier: MIT

import requests

from health_check.backends import BaseHealthCheckBackend
from health_check.exceptions import HealthCheckException

from django.conf import settings

class OPAHealthCheck(BaseHealthCheckBackend):
    critical_service = True

    def check_status(self):
        opa_health_url = f'{settings.IAM_OPA_HOST}/health?bundles'
        try:
            response = requests.get(opa_health_url)
            response.raise_for_status()
        except requests.RequestException as e:
            raise HealthCheckException(str(e))

    def identifier(self):
        return self.__class__.__name__
