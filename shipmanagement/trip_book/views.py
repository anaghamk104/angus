from django.shortcuts import render
from trip_book.models import TripBooking


# Create your views here.
def tripbook(request):
    if request.method == 'POST':
        tripbookobj = TripBooking()
        # tripbookobj.ship_name=request.POST.get('ship_name')
        tripbookobj.from_place = request.POST.get('fromplace')
        tripbookobj.toplace = request.POST.get('to_place')
        tripbookobj.from_time = request.POST.get('frm_time')
        tripbookobj.to_time = request.POST.get('t')
        tripbookobj.passengers = request.POST.get('adultno')
        tripbookobj.date = request.POST.get('date')
        tripbookobj.user_id = '1'
        tripbookobj.user_name = request.POST.get('d')
        tripbookobj.status='pending'
        tripbookobj.save()
    return render(request, 'trip_book/shipavail.html')


def viewtripbook(request):
    tripbookobj = TripBooking.objects.filter(status='pending')
    context = {
        't': tripbookobj
    }
    return render(request, 'trip_book/viewbookeduser.html', context)


def app(request, idd):
    tripbookobj = TripBooking.objects.get(tripbook_id=idd)
    tripbookobj.status = 'approved'
    tripbookobj.save()
    return viewtripbook(request)


def rej(request, idd):
    tripbookobj = TripBooking.objects.get(tripbook_id=idd)
    tripbookobj.status = 'rejected'
    tripbookobj.save()
    return viewtripbook(request)
