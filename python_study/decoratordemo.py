# encoding: utf-8
# File Name: decoratordemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Wed 22 Jan 2014 10:01:43 PM CST
#########################################################################
#!/usr/bin/python

#get square sum
def square_sum(a, b):
	print("input:" , a, b)
	return a**2 + b**2

# get square diff
def square_diff(a, b):
	print("input:" , a, b)
	return a**2 - b**2

print(square_sum(3, 4))
print(square_diff(3, 4))

print("I'm the beautiful divding line")

def decorator(F):
	def new_F(a, b):
		print("input :", a, b)
		return F(a, b)
	return new_F

#get square sum

@decorator
def square_sum1(a, b):
	return a**2 + b**2

@decorator
def square_diff1(a, b):
	return a**2 - b**2

print(square_sum1(3, 4))
print(square_diff1(3, 4))

print("I'm the beautiful divding line")

# a new wrapper layer
def pre_str(pre=''):
	# old decorator
	def decorator(F):
		def new_F(a, b):
			print(pre + "input", a, b)
			return F(a, b)
		return new_F
	return decorator

@pre_str('^_^')
def square_sum2(a, b):
	return a**2 + b**2

@pre_str('T_T')
def square_diff2(a, b):
	return a**2 - b**2

print(square_sum2(3, 4))
print(square_diff2(3, 4))

print("I'm the beautiful divding line")

def decoratorClass(aClass):
	class newClass:
		def __init__(self, age):
			self.total_display = 0
			self.wrapped = aClass(age)
		def display(self):
			self.total_display += 1
			print("total display", self.total_display)
			self.wrapped.display() #self.wrapped is the object of the old class
	return newClass

@decoratorClass
class Bird:
	def __init__(self, age):
		self.age = age
	def display(self):
		print("My age is ", self.age)

eagleLord = Bird(5)
for i in range(3):
	eagleLord.display()
