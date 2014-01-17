# encoding: utf-8
# File Name: filedemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Sun 12 Jan 2014 02:13:27 PM CST
#########################################################################
#!/usr/bin/python

filename = "test_file.txt"

def write_file():
	f = open(filename, 'w')
	f.write('hello leiss')
	f.write('\n')
	f.write('my blog: http://112.124.8.169/blog')
	f.write('\n')
	f.write('this is the end')
	f.write('\n')
	f.close

def read_file():
	f = open(filename, 'r')
	line = f.readline()
	while line:
		print line
		line = f.readline()
	f.close

import sys
reload(sys)
sys.setdefaultencoding('utf-8')

def file_ops():
	f = open(filename, 'r')
	
	print 'read()'
	print f.read()
	
	print 'readline() f.seek(0)'
	f.seek(0)
	print f.readline()
	
	print 'readline() f.seek(1)'
	print f.tell()
	f.seek(1)
	print f.tell()
	print f.readline()
	
	print 'readline() f.seek(10)'
	print f.tell()
	f.seek(10)
	print f.tell()
	print f.readline()
	print f.tell()
	print f.readline()
	
	print 'readline() f.seek(15)'
	print f.tell()
	f.seek(15)
	print f.tell()
	print f.readline()
	print f.tell()
	print f.readline()
	
	print 'readlines()'
	f.seek(0)
	print f.readlines()
	print
	
	print 'readlines()'
	f.seek(0)
	print f.readlines()
	print
	
	print 'list all lines'
	print 'readlines()'
	f.seek(0)
	print f.readlines()
	print
	
	print 'list all lines'
	f.seek(0)
	textlist = f.readlines()
	for line in textlist:
		print line,
	print
	
	print 'seek(15) function'
	f.seek(15)
	print 'tell() function'
	print f.tell()
	print f.read()
	
	f.close()



if __name__ == "__main__":
	write_file()
	read_file()
	file_ops()

