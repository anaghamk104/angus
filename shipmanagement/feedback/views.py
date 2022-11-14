from django.shortcuts import render
from feedback.models import Feedback
import datetime


# Create your views here.
def postfeed(request):
    if request.method == 'POST':
        feedobj=Feedback()
        feedobj.feedback=request.POST.get('feedback')
        feedobj.time=datetime.datetime.now()
        feedobj.date=datetime.datetime.today()
        feedobj.save()

    return render(request,'feedback/feedback.html')

def viewfeed(request):
    feedobj=Feedback.objects.all()
    context ={
        'f' : feedobj

    }
    return render(request,'feedback/viewfeedback.html',context)


def shipfeed(request):
    sfeedobj=Feedback.objects.all()
    context ={
        'pp' : sfeedobj

    }
    return render(request,'feedback/viewfeedback.html',context)