from django.db import models

# Create your models here.
class sbtechlist(models.MODEL):
	organization = models.CharField(max_length=100)
	type1 = models.CharField(max_length=500)
	description = models.CharField(max_length=2000)
	sebsite = models.CharField(max_length=500)
	address = models.CharField(max_length=200)
	city = models.CharField(max_length=50)
	state = models.CharField(max_length=4)
	zipcode = models.IntegerField()
	employees = models.IntegerField()
	founded = models.IntegerField()