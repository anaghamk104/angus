from django.conf.urls import url
from register_user import views

urlpatterns = [
    url('userreg/',views.reguser),
    url('viewreguser/',views.viewreguser),
    url(r'^u/(?P<idd>\w+)',views.a,name='y'),
    url(r'^v/(?P<idd>\w+)',views.r,name='i')
]