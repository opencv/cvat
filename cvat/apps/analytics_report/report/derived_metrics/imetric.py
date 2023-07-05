from cvat.apps.analytics_report.report.primary_metrics import IPrimaryMetric

class IDerivedMetric(IPrimaryMetric):
    def __init__(self, db_obj, primary_statistics):
        super().__init__(db_obj)

        self._primary_statistics = primary_statistics
