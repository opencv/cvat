# Generated by Django 4.2.11 on 2024-05-10 06:00

from django.db import migrations

def upgrade_report(report):
    statistics = [stat for stat in report.statistics if stat["name"] == "annotation_speed"]
    modified = False

    for statistic in statistics:
        if len(statistic["data_series"]["object_count"]) > 2:
            records_1 = list(reversed(statistic["data_series"]["object_count"]))
            records_2 = records_1[1:]
            for next, prev in zip(records_1, records_2):
                next["value"] += prev["value"]
            previous_count = 0
            for item in statistic["data_series"]["object_count"]:
                item["value"] -= previous_count
                previous_count += item["value"]
            modified = True

    return report if modified else None


def forwards_func(apps, schema_editor):
    AnalyticsReport = apps.get_model('analytics_report', 'AnalyticsReport')

    # first upgrade all reports, related to jobs
    reports = AnalyticsReport.objects.exclude(job_id=None).all()
    objects_to_update = []
    for report in reports:
        try:
            objects_to_update.append(upgrade_report(report))
        except Exception:
            # I do not expect exception to happen here
            # but if it happened, let's just ignore the report
            pass

    objects_to_update = list(filter(lambda x: x is not None, objects_to_update))
    AnalyticsReport.objects.bulk_update(objects_to_update, fields=['statistics'], batch_size=500)

    # finally remove all reports, not related to jobs
    # they will be recalculated by user request, based on adjusted data
    AnalyticsReport.objects.filter(job_id=None).delete()


class Migration(migrations.Migration):

    dependencies = [
        ("analytics_report", "0001_initial"),
    ]

    operations = [migrations.RunPython(forwards_func)]
