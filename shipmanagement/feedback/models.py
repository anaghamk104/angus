from django.db import models


# Create your models here.
class Feedback(models.Model):
    feedback_id = models.AutoField(primary_key=True)
    date = models.DateField()
    time = models.TimeField()
    username = models.CharField(max_length=25)
    feedback = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'feedback'

