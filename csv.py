import csv
with open( '___.csv') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		print (row['organization'], row['cat'], row['description'], row['website'], row['address'], row['city'], row['state'], row['zipcode'], row['employees'], row['founded'])