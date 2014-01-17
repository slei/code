# encoding: utf-8
# File Name: timedemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Sat 11 Jan 2014 10:04:14 PM CST
#########################################################################
#!/usr/bin/python

import sys
reload(sys)
sys.setdefaultencoding("utf-8")
import datetime

def format_time():
	t = datetime.datetime.now()
	print(t)

	t = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
	print(t)

	t = datetime.datetime.now().strftime('%b-%d-%y %H:%M:%S')
	print(t)

	t = datetime.datetime.now().strftime('%b-%d-%Y %H:%M:%S')
	print(t)

	# weekday
	t = datetime.datetime.now().strftime('%a %A %U %W %w')
	print(t)

	# month
	t = datetime.datetime.now().strftime('%b %B')
	print(t)

	#day
	t = datetime.datetime.now().strftime('%d %j')
	print(t)

	# date and time for locale
	t = datetime.datetime.now().strftime('%c')
	print(t)

	# hour
	t = datetime.datetime.now().strftime('%H %l')
	print(t)

	# A.M/P.M
	t = datetime.datetime.now().strftime('%p')
	print(t)

	t = datetime.datetime.now().strftime('%x')
	print(t)
	t = datetime.datetime.now().strftime('%X')
	print(t)
	t = datetime.datetime.now().strftime('%x %X')
	print(t)

	t = datetime.datetime.now().strftime('%z')
	print(t)
	t = datetime.datetime.now().strftime('%Z')
	print(t)

	# 字符串转换成datetime
	t = datetime.datetime.strptime('Nov-20-13 09:42', '%b-%d-%y %H:%M')
	print(t)

	t = datetime.datetime(2013, 11, 20, 9, 42)
	print(t)

	# datetime to str
	t = datetime.datetime.now().strftime('%b-%d-%y %H:%M:%S')
	print(t)

if __name__ == "__main__":
	format_time()
