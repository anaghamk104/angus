from django.shortcuts import render
from register_ship.models import ShipRegister
from login.models import Login

# Create your views here.
def registership(request):
    if request.method == 'POST':
        regshipobj = ShipRegister()
        regshipobj.ship_name = request.POST.get('ship_name')
        regshipobj.register_number = request.POST.get('reg_num')
        regshipobj.password = request.POST.get('pwd')
        regshipobj.confirm_password = request.POST.get('pwd1')
        regshipobj.email = request.POST.get('email')
        regshipobj.phone_num = request.POST.get('Phone')
        regshipobj.capacity = request.POST.get('capacity')
        regshipobj.save()

        obj = Login()
        obj.user_name =regshipobj.ship_name
        obj.password = regshipobj.password
        obj.type = 'ship'
        obj.u_id = regshipobj.ship_id
        obj.save()

    return render(request, 'register_ship/shipregister.html')


def viewship(request):
    obj=ShipRegister.objects.all()
    context={
        'e' : obj
    }

    return render(request,'register_ship/manage.html',context)


def manage(request):
    regshipobj=ShipRegister.objects.all()
    context ={
        'u' : regshipobj
    }
    return render(request,'register_ship/manage.html',context)

def updateship(request,idd):
    regshipobj = ShipRegister.objects.get(ship_id=idd)
    context= {

        'o': regshipobj

        }
    if request.method=="POST":
        regshipobj=ShipRegister.objects.get(ship_id=idd)
        regshipobj.ship_name=request.POST.get('ship_name')
        regshipobj.email=request.POST.get('email')
        regshipobj.phone_num=request.POST.get('Phone')
        regshipobj.capacity=request.POST.get('capacity')
        regshipobj.save()
        return manage(request)

    return render(request,'register_ship/updateship.html',context)

# def apr(request,idd):
#     regshipobj=ShipRegister.objects.get(ship_id=idd)
#     regshipobj.status='Updated'
#     regshipobj.save()
#     return  viewship(request)
def deleteship(request,idd):
    regshipobj=ShipRegister.objects.get(ship_id=idd).delete()
    return manage(request)



