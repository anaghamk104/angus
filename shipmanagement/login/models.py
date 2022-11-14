from django.db import models

# Create your models here.
class Login(models.Model):
    log_id = models.AutoField(primary_key=True)
    user_name = models.CharField(max_length=20)
    password = models.CharField(max_length=25)
    u_id = models.IntegerField()
    type = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'login'
