# Copyright (C) 2022 CVAT.ai Corporation
#
# SPDX-License-Identifier: MIT

from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.permissions import AllowAny
from rest_framework import status

class DBFailureView(APIView):
    serializer_class = None
    permission_classes = [AllowAny]
    authentication_classes = []
    iam_organization_field = None

    @staticmethod
    def _get_response():
        return Response("It seems the backend service can't connect to the database. \
            If you upgraded from version 2.3.0 or earlier, see the Upgrade Guide section \
            in the online documentation, you may need to do some manual actions.",
            status=status.HTTP_503_SERVICE_UNAVAILABLE)

    def get(self, request):
        return self._get_response()

    def post(self, request):
        return self._get_response()

    def put(self, request):
        return self._get_response()

    def patch(self, request):
        return self._get_response()

    def delete(self, request):
        return self._get_response()
