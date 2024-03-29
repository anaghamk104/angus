# Generated by Django 3.2.16 on 2022-11-05 05:00

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ShipRegister',
            fields=[
                ('ship_id', models.AutoField(primary_key=True, serialize=False)),
                ('ship_name', models.CharField(max_length=25)),
                ('register_number', models.IntegerField()),
                ('password', models.CharField(max_length=20)),
                ('confirm_password', models.CharField(max_length=25)),
                ('phone_num', models.IntegerField()),
                ('email', models.CharField(max_length=25)),
                ('capacity', models.IntegerField()),
            ],
            options={
                'db_table': 'ship_register',
                'managed': False,
            },
        ),
    ]
