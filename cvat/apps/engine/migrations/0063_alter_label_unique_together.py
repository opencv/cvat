# Generated by Django 3.2.17 on 2023-02-15 14:39

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('engine', '0062_delete_previews'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='label',
            unique_together={('task', 'name', 'parent'), ('project', 'name', 'parent')},
        ),
    ]
