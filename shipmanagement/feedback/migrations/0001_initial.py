# Generated by Django 3.2.16 on 2022-11-05 05:00

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Feedback',
            fields=[
                ('feedback_id', models.AutoField(primary_key=True, serialize=False)),
                ('date', models.DateField()),
                ('time', models.TimeField()),
                ('username', models.CharField(max_length=25)),
                ('feedback', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'feedback',
                'managed': False,
            },
        ),
    ]
