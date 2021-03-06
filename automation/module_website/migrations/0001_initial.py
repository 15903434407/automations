# Generated by Django 3.0.6 on 2020-05-06 10:55

from django.db import migrations, models
import django_extensions.db.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Domain',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created', django_extensions.db.fields.CreationDateTimeField(auto_now_add=True, verbose_name='created')),
                ('modified', django_extensions.db.fields.ModificationDateTimeField(auto_now=True, verbose_name='modified')),
                ('name', models.CharField(max_length=255, verbose_name='域名')),
                ('email', models.EmailField(max_length=255, verbose_name='邮箱')),
                ('register_author', models.CharField(max_length=255, verbose_name='注册者')),
                ('register_business', models.CharField(max_length=255, verbose_name='注册商')),
                ('register_site', models.CharField(max_length=255, verbose_name='注册网址')),
                ('register_date', models.DateField(verbose_name='注册时间')),
                ('update_date', models.DateField(verbose_name='更新时间')),
                ('expires_date', models.DateField(verbose_name='过期时间')),
                ('status', models.CharField(max_length=255, verbose_name='状态')),
                ('dns', models.CharField(max_length=255, verbose_name='DNS')),
            ],
            options={
                'verbose_name': '域名',
                'verbose_name_plural': '域名',
                'ordering': ['-id'],
            },
        ),
        migrations.CreateModel(
            name='DomainContact',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created', django_extensions.db.fields.CreationDateTimeField(auto_now_add=True, verbose_name='created')),
                ('modified', django_extensions.db.fields.ModificationDateTimeField(auto_now=True, verbose_name='modified')),
                ('status', models.CharField(max_length=255, verbose_name='状态')),
                ('module_info', models.CharField(max_length=255, verbose_name='模板信息')),
                ('company_name', models.CharField(max_length=255, verbose_name='企业名称')),
                ('contact', models.CharField(max_length=255, verbose_name='联系人')),
                ('email', models.EmailField(max_length=255, verbose_name='邮箱')),
                ('country_code', models.CharField(max_length=255, verbose_name='国家代码')),
                ('province', models.CharField(max_length=255, verbose_name='省份')),
                ('city', models.CharField(max_length=255, verbose_name='城市')),
                ('address', models.CharField(max_length=255, verbose_name='详细地址')),
                ('postman', models.CharField(max_length=12, verbose_name='邮编')),
                ('phone', models.CharField(max_length=16, verbose_name='电话')),
            ],
            options={
                'verbose_name': '域名联系人',
                'verbose_name_plural': '域名联系人',
                'ordering': ['-id'],
            },
        ),
        migrations.CreateModel(
            name='Statistics',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created', django_extensions.db.fields.CreationDateTimeField(auto_now_add=True, verbose_name='created')),
                ('modified', django_extensions.db.fields.ModificationDateTimeField(auto_now=True, verbose_name='modified')),
                ('name', models.CharField(max_length=255, verbose_name='统计名称')),
                ('code', models.TextField(verbose_name='统计代码')),
            ],
            options={
                'verbose_name': '数据统计',
                'verbose_name_plural': '数据统计',
                'ordering': ['-id'],
            },
        ),
    ]
