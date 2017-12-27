from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request):
	return HttpResponse("A list of start ups and businesses based in sunny Santa Barbara, California")


#create function that returns contents of Postgres DB