# Generated by Django 3.0.6 on 2020-05-13 06:20

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('module_website', '0007_auto_20200513_1418'),
    ]

    operations = [
        migrations.AlterField(
            model_name='domain',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL, verbose_name='域名所属'),
        ),
    ]
