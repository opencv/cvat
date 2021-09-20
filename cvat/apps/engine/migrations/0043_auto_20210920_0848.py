# Generated by Django 3.1.13 on 2021-09-20 08:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('organizations', '0002_auto_20210920_0848'),
        ('engine', '0042_auto_20210830_1056'),
    ]

    operations = [
        migrations.AddField(
            model_name='cloudstorage',
            name='organization',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='cloudstorages', to='organizations.organization'),
        ),
        migrations.AddField(
            model_name='project',
            name='organization',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='projects', to='organizations.organization'),
        ),
        migrations.AddField(
            model_name='task',
            name='organization',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='tasks', to='organizations.organization'),
        ),
    ]
