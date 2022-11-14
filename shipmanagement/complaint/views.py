from django.shortcuts import render
from complaint.models import Complaint
from register_ship.models import ShipRegister
import datetime

# Create your views here.
def postcom(request):
    ob=ShipRegister.objects.all()
    context={
        'k':ob
    }
    if request.method=="POST":
        obj=Complaint()
        obj.ship_id=request.POST.get('ship')
        obj.complaint=request.POST.get('complaint')
        obj.time=datetime.datetime.now()
        # obj.u_id=request.POST.get('u')
        obj.date=datetime.datetime.today()
        obj.save()
    return render(request, 'complaint/complaint.html',context)

def viewcomp(request):
    obj=Complaint.objects.all()
    context={
        'j':obj
    }
    return render(request, 'complaint/viewcomplaint.html',context)


def sviewcomp(request):
    sobj=Complaint.objects.all()
    context={
        'L':sobj
    }
    return render(request, 'complaint/scomplaint.html',context)


def manage(request):
    obj = Complaint.objects.all()
    context = {
        'n': obj
    }
    return render(request, 'complaint/managecomplaint.html', context)




def reply(request,idd):
    obj=Complaint.objects.get(complaint_id=idd)
    context={
        'n' :obj
    }
    if request.method=='POST':
        regshipobj = Complaint.objects.get(complaint_id=idd)
        regshipobj.complaint = request.POST.get('complaint')
        obj.time = datetime.datetime.now()
        obj.date = datetime.datetime.today()
        regshipobj.save()
        return manage(request)

    return render(request, 'complaint/postreply.html', context)




