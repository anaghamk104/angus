from django.conf.urls import url
from  feedback import views


urlpatterns = [
    url('postfeedback',views.postfeed),
    url('viewfeedback',views.viewfeed),
    url('shipfeedback', views.shipfeed),

]