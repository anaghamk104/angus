from django.conf.urls import url
from  register_ship import views


urlpatterns = [
    url('shipreg/',views.registership),
    url('viewship/', views.viewship),
    url('manage/',views.manage),
    url(r'^up/(?P<idd>\w+)', views.updateship, name='up'),
    url(r'^del/(?P<idd>\w+)', views.deleteship, name='d'),
]