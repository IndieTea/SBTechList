import csv
from django.http import HTTPResponse
def some_vew
#Create the HttpResponse object with the appropriate CSV header.
	response = HttpResponse(content_type='text/csv')
	response['Content-Disposition'] = 'attachment; filename="somefilename.csv"'

	writer = csv.writer(response)
	writer.writerow(row['organization'])
	writer.writerow([])
	writer.writerow([])
	writer.writerow([])
	writer.writerow([])
	writer.writerow([])
	writer.writerow([])
	writer.writerow([])
	writer.writerow([])
	writer.writerow([])6

#with open( '___.csv') as csvfile:
#	reader = csv.DictReader(csvfile)
#	for row in reader:


#		print (row['organization'], row['cat'], row['description'], row['website'], row['address'], row['city'], row['state'], row['zipcode'], row['employees'], row['founded'])