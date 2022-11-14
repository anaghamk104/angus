from django.shortcuts import render
from darshana.models import Darshana
from  darshanabook.models import Darshanabook
from ureg.models import Ureg

# Create your views here.

def darshanaadd(request):
    if request.method == "POST":
        obj = Darshana()
        obj.day = request.POST.get('day')
        obj.time = request.POST.get('tim')
        obj.date = request.POST.get('dt')
        obj.desc = request.POST.get('desc')
        obj.type = request.POST.get('spcl')
        obj.save()

    return render(request, 'darshana/dharshanatime.html')


def darshanaview(request):
    obj=Darshana.objects.filter(type='pooja')
    context={
        'a' :obj
    }


    return render(request, 'darshana/pooja.html',context)

def vazhipad_view(request):
    obj=Darshana.objects.filter(type='vazhipade')
    context={
        'a' :obj
    }


    return render(request, 'darshana/vazhipad.html',context)


def book(request,idd):
    obj=Darshana.objects.get(did=idd)
    obk=Ureg.objects.all()
    context={
        'a':obj,
        'w':obk
    }
    if request.method == "POST":
        obj = Darshanabook()
        obj.day = request.POST.get('day')
        obj.date = request.POST.get('dt')
        obj.time = request.POST.get('tim')
        obj.ppls = request.POST.get('ppl')
        obj.u_id=request.POST.get('u')
        obj.save()
        return darshanaview(request)
    return render(request,'darshanabook/darshanabook.html',context)

def vazh_book(request,idd):
    obj=Darshana.objects.get(did=idd)
    obk=Ureg.objects.all()
    context={
        'a':obj,
        'w':obk
    }
    if request.method == "POST":
        obj = Darshanabook()
        obj.day = request.POST.get('day')
        obj.date = request.POST.get('dt')
        obj.time = request.POST.get('tim')
        obj.ppls = request.POST.get('ppl')
        obj.u_id=request.POST.get('u')
        obj.save()
        return darshanaview(request)
    return render(request,'darshanabook/darshanabook.html',context)