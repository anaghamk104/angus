from django.db import models

# Create your models here.

class ShipRegister(models.Model):
    ship_id = models.AutoField(primary_key=True)
    ship_name = models.CharField(max_length=25)
    register_number = models.IntegerField()
    password = models.CharField(max_length=20)
    confirm_password = models.CharField(max_length=25)
    phone_num = models.IntegerField()
    email = models.CharField(max_length=25)
    capacity = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'ship_register'
