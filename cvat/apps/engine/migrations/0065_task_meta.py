# Generated by Django 3.2.15 on 2022-12-27 12:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('engine', '0064_auto_20221125_0935'),
    ]

    operations = [
        migrations.AddField(
            model_name='task',
            name='meta',
            field=models.JSONField(blank=True, null=True),
        ),
    ]