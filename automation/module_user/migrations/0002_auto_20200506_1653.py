# Generated by Django 3.0.6 on 2020-05-06 08:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('module_user', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='firegameuser',
            name='username',
            field=models.CharField(db_index=True, max_length=32, unique=True, verbose_name='用户名'),
        ),
    ]