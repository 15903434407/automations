# Generated by Django 3.0.6 on 2020-05-07 06:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('module_website', '0002_domainconfig_floorpage'),
    ]

    operations = [
        migrations.AddField(
            model_name='domainconfig',
            name='is_save_service_info',
            field=models.BooleanField(default=True, verbose_name='是否保留客服与统计'),
        ),
    ]
