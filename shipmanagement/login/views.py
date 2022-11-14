from django.shortcuts import render
from login.models import Login


# Create your views here.
def login(request):
    if request.method == 'POST':
        u_name=request.POST.get('usr')
        passw=request.POST.get('pwd')


        obj=Login.objects.filter(user_name=u_name,password=passw)
        tp=''
        for ob in obj:
            tp=ob.type
            uid=ob.u_id
            if tp=="admin":
                return render(request,'temp/Adminindex.html')
            if tp=="user":
                return render(request,'temp/userindex.html')
            if tp=="ship":
                return render(request,'temp/Shipindex.html')
        objlist="Username or password incorrect..check your credentials"
        context={
            'msg' :objlist
        }
        return render(request,'login/login.html',context)

    return render(request, 'login/login.html')
