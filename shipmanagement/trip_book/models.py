from django.db import models


class TripBooking(models.Model):
    tripbook_id = models.AutoField(primary_key=True)
    ship_name = models.CharField(max_length=25)
    from_place = models.CharField(max_length=10)
    to_place = models.CharField(max_length=10)
    from_time = models.CharField(max_length=4)
    to_time = models.CharField(max_length=4)
    date = models.DateField()
    user_id = models.IntegerField()
    user_name = models.CharField(max_length=10)
    passengers = models.IntegerField()
    status = models.CharField(max_length=15)


    class Meta:
        managed = False
        db_table = 'trip_booking'
