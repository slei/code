#########################################################################
# File Name: mysqldb.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Mon 06 Jan 2014 10:51:50 PM CST
#########################################################################
#!/usr/bin/python

import MySQLdb

db = MySQLdb.connect(host="localhost", user="root", passwd="!z4v7M0",
		db="wordpress")

cursor = db.cursor()

cursor.execute("Select * from wp_users")
result = cursor.fetchall()

for row in result:
	#print row
	#print row[0], row[1], row[2]
	#print '%s, %s, %s' % (row[0], row[1], row[2])
	print ', '.join([str(row[0]), str(row[1]), str(row[2])])

cursor.close()

