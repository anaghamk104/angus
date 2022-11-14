from django.shortcuts import render

# Create your views here.

def user(request):
    return render(request,'temp/userindex.html')

def admin(request):
    return render(request,'temp/Adminindex.html')

def ship(request):
    return render(request,'temp/Shipindex.html')

def home(request):
    return render(request,'temp/Homeindex.html')
