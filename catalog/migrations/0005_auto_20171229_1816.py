# Generated by Django 2.0 on 2017-12-29 18:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0004_auto_20171229_0130'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='sbtechlist',
            options={'managed': False, 'ordering': ['-employees', 'organization']},
        ),
    ]
