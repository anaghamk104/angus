from django.shortcuts import render
from register_user.models import UserReg
from login.models import Login

# Create your views here.
def reguser(request):
    if request.method=='POST':
        reguserobj=UserReg()
        reguserobj.user_name=request.POST.get('name')
        reguserobj.address=request.POST.get('address')
        reguserobj.password=request.POST.get('pwd')
        reguserobj.passord1=request.POST.get('pwd1')
        reguserobj.dob=request.POST.get('dob')
        reguserobj.phone=request.POST.get('phone')
        reguserobj.email=request.POST.get('email')
        reguserobj.status='pending'


        reguserobj.save()

        obj=Login()
        obj.user_name=reguserobj.user_name
        obj.password=reguserobj.password
        obj.type='user'
        obj.u_id=reguserobj.u_id
        obj.save()






    return render(request,'register_user/user_reg.html')


def viewreguser(request):
    reguserobj=UserReg.objects.filter(status='pending')
    context = {
        'r' : reguserobj
    }
    return render(request,'register_user/viewbookeduser.html',context)

def a(request,idd):
    reguserobj=UserReg.objects.get(u_id=idd)
    reguserobj.status='approved'
    reguserobj.save()
    return viewreguser(request)

def r(request,idd):
    reguserobj = UserReg.objects.get(u_id=idd)
    reguserobj.status='Rejected'
    reguserobj.save()
    return viewreguser(request)