# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2018-09-13 16:35
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_banner_emainverifyrecord'),
    ]

    operations = [
        migrations.AlterField(
            model_name='emainverifyrecord',
            name='send_time',
            field=models.DateField(default=datetime.datetime.now, verbose_name='发送时间'),
        ),
        migrations.AlterField(
            model_name='emainverifyrecord',
            name='send_type',
            field=models.CharField(choices=[('register', '注册'), ('forget', '找回密码')], max_length=10, verbose_name='验证码类型'),
        ),
    ]
