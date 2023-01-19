# Copyright (C) 2023 CVAT.ai Corporation
#
# SPDX-License-Identifier: MIT

# NOTE: importing in the utils.py header leads to circular importing

from typing import Any, Dict, Optional, Type

from django.db.models.query import QuerySet
from django.http.request import HttpRequest
from django.http.response import HttpResponse
from django.urls import reverse as _django_reverse
from django.utils.http import urlencode
from rest_framework import status
from rest_framework.response import Response
from rest_framework.serializers import Serializer
from rest_framework.viewsets import GenericViewSet


def make_paginated_response(
    queryset: QuerySet,
    *,
    viewset: GenericViewSet,
    response_type: Optional[Type[HttpResponse]] = None,
    serializer_type: Optional[Type[Serializer]] = None,
    request: Optional[Type[HttpRequest]] = None,
    **serializer_params
):
    # Adapted from the mixins.ListModelMixin.list()

    serializer_params.setdefault('many', True)

    if response_type is None:
        response_type = Response

    if request is None:
        request = getattr(viewset, 'request', None)

    if request is not None:
        context = serializer_params.setdefault('context', {})
        context.setdefault('request', request)

    if serializer_type is None:
        serializer_type = viewset.get_serializer

    page = viewset.paginate_queryset(queryset)
    if page is not None:
        serializer = serializer_type(page, **serializer_params)
        return viewset.get_paginated_response(serializer.data)

    serializer = serializer_type(queryset, **serializer_params)

    return response_type(serializer.data)

def reverse(viewname, *, args=None, kwargs=None,
    query_params: Optional[Dict[str, str]] = None,
    request: Optional[HttpRequest] = None,
) -> str:
    """
    The same as Django reverse(), but adds query params support.
    The original request can be passed in the 'request' kwarg parameter to
    forward parameters.
    """

    url = _django_reverse(viewname, args=args, kwargs=kwargs)

    if request:
        new_query_params = query_params or {}
        query_params = request.GET.dict()
        query_params.update(new_query_params)

    if query_params:
        return f'{url}?{urlencode(query_params)}'

    return url

def build_field_filter_params(field: str, value: Any) -> Dict[str, str]:
    """
    Builds a collection filter query params for a single field and value.
    """
    return { field: value }

def redirect_to_full_collection_endpoint(location: str, *, request: HttpRequest,
    filter_field: str, filter_key: str
) -> HttpResponse:
    """
    Builds a redirection response for a collection endpoint.
    """

    # https://www.rfc-editor.org/rfc/rfc9110.html#name-303-see-other
    return Response(status=status.HTTP_303_SEE_OTHER, headers={
        'Location': reverse(location,
            query_params=build_field_filter_params(filter_field, filter_key),
            request=request
        )
    })
