# Copyright (C) 2023 CVAT.ai Corporation
#
# SPDX-License-Identifier: MIT

from abc import ABCMeta, abstractmethod

from cvat.apps.analytics_report.report.primary_metrics.utils import make_clickhouse_query
from datetime import datetime, timezone

class PrimaryMetricBase(metaclass=ABCMeta):
    _title = None
    _description = None
    _query = None
    _granularity = None
    _default_view = None
    _key = None
    _transformations = []

    def __init__(self, db_obj):
        self._db_obj = db_obj

    @classmethod
    def description(cls):
        return cls._description

    @classmethod
    def title(cls):
        return cls._title

    @classmethod
    def granularity(cls):
        return cls._granularity

    @classmethod
    def default_view(cls):
        return cls._default_view

    @classmethod
    def transformations(cls):
        return cls._transformations

    @classmethod
    def key(cls):
        return cls._key

    @abstractmethod
    def calculate(self):
        ...

    def _make_clickhouse_query(self, parameters):
        return make_clickhouse_query(query=self._query, parameters=parameters)

    @staticmethod
    def _get_utc_now():
        return datetime.now(timezone.utc)

