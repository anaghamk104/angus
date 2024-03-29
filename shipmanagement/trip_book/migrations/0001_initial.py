# Generated by Django 3.2.16 on 2022-11-05 05:00

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='TripBooking',
            fields=[
                ('tripbook_id', models.AutoField(primary_key=True, serialize=False)),
                ('ship_name', models.CharField(max_length=25)),
                ('from_place', models.CharField(max_length=10)),
                ('to_place', models.CharField(max_length=10)),
                ('from_time', models.CharField(max_length=4)),
                ('to_time', models.CharField(max_length=4)),
                ('date', models.DateField()),
                ('user_id', models.IntegerField()),
                ('user_name', models.CharField(max_length=10)),
                ('passengers', models.IntegerField()),
                ('status', models.CharField(max_length=15)),
            ],
            options={
                'db_table': 'trip_booking',
                'managed': False,
            },
        ),
    ]
