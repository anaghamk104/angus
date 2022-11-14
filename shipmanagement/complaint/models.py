from django.db import models
from  register_ship .models import ShipRegister


class Complaint(models.Model):
    complaint_id = models.AutoField(primary_key=True)
    user_name = models.CharField(max_length=25)
    date = models.CharField(max_length=20)
    time = models.CharField(max_length=15)
    complaint = models.CharField(max_length=100)
    # ship_id = models.IntegerField()
    ship=models.ForeignKey(ShipRegister,to_field='ship_id',on_delete=models.CASCADE)


    class Meta:
        managed = False
        db_table = 'complaint'
