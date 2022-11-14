from django.conf.urls import url
from trip_book import views

urlpatterns=[
    url('shipavail/',views.tripbook),
    url('viewbookuser/',views.viewtripbook),
    url(r'^ap/(?P<idd>\w+)',views.app,name='app'),
    url(r'^rej/(?P<idd>\w+)', views.rej, name='reje'),

]