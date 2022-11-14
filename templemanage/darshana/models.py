from django.db import models


class Darshana(models.Model):
    did = models.AutoField(primary_key=True)
    day = models.CharField(max_length=20)
    date = models.DateField()
    time = models.TimeField()
    desc = models.CharField(max_length=100)
    type = models.CharField(max_length=100)


    class Meta:
        managed = False
        db_table = 'darshana'


