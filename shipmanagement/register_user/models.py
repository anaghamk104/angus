from django.db import models

# Create your models here.
class UserReg(models.Model):
    u_id = models.AutoField(primary_key=True)
    user_name = models.CharField(max_length=25)
    dob = models.DateField()
    address = models.CharField(max_length=50)
    password = models.CharField(max_length=25)
    passord1 = models.CharField(max_length=25)
    email = models.CharField(max_length=25)
    time = models.CharField(max_length=23)
    status = models.CharField(max_length=15)


    class Meta:
        managed = False
        db_table = 'user_reg'
