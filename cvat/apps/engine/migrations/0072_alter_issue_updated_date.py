# Generated by Django 4.2.1 on 2023-06-23 06:18

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("engine", "0071_annotationguide_asset"),
    ]

    operations = [
        migrations.AlterField(
            model_name="issue",
            name="updated_date",
            field=models.DateTimeField(auto_now=True, null=True),
        ),
    ]
