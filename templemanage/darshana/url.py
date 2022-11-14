from django.conf.urls import url
from darshana import views


urlpatterns=[
    url('adddarshana/',views.darshanaadd),
    url('viewdarshana/',views.darshanaview),
    url(r'^book/(?P<idd>\w+)',views.book),
    url('vazhi/',views.vazhipad_view),
    url(r'^vazh_booking/(?P<idd>\w+)',views.book),


]