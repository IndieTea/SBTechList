# Generated by Django 2.0 on 2017-12-29 00:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0002_auto_20171228_2259'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='sbtechlist',
            options={'ordering': ['employees', 'organization']},
        ),
    ]