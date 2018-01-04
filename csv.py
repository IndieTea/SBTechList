import csv
with open( '___.csv') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		print (row['organization'], row['cat'], row[''], row[''], row[''])