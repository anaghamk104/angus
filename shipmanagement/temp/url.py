from django.conf.urls import url
from temp import views

urlpatterns=[
    url('userhome/',views.user),
    url('adminhome/',views.admin),
    url('shiphome/',views.ship),
    url('home/',views.home)
]