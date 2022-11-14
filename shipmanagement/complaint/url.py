from django.conf.urls import url
from complaint import views



urlpatterns=[
    url('postcom/',views.postcom),
    url('view/',views.viewcomp),
    url('manage/',views.manage),
    url('scomplaint/',views.sviewcomp),
    url(r'^y/(?P<idd>\w+)', views.reply, name='p'),


]