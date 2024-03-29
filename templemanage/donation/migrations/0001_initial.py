# Generated by Django 3.2.16 on 2022-11-09 05:59

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Donation',
            fields=[
                ('do_id', models.AutoField(primary_key=True, serialize=False)),
                ('do_type', models.CharField(max_length=30)),
                ('amount', models.IntegerField()),
                ('date', models.DateField()),
                ('time', models.TimeField()),
                ('uid', models.IntegerField()),
                ('status', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'donation',
                'managed': False,
            },
        ),
    ]
