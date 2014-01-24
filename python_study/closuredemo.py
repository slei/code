# encoding: utf-8
# File Name: closuredemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Wed 22 Jan 2014 09:09:46 PM CST
#########################################################################
#!/usr/bin/python


def line_conf():
	b = 15
	def line(x):
		return 2*x + b
	print(line(5))  # within the scope
	return line  # return a function object   

b = 5
my_line = line_conf()
print(my_line(5))
print(my_line.__closure__)
print(my_line.__closure__[0].cell_contents)

print('I\'m beautiful divding line')

def line_conf1(a, b):
	def line(x):
		return a*x + b
	return line

line1 = line_conf1(1, 1)
line2 = line_conf1(4, 5)
print(line1(5), line2(5))

print('I\'m beautiful divding line')


