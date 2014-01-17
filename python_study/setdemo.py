# encoding: utf-8
#########################################################################
# File Name: setdemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Sat 11 Jan 2014 08:30:15 PM CST
#########################################################################
#!/usr/bin/python

import sys
reload(sys)
sys.setdefaultencoding('utf-8')

def test_set():
	x = set('leiss')
	y = set(['i', 't', 'h', 's', 'n'])
	print("%s, %s" % (x, y))  

	# 交集
	print("%s" % (x&y))
	f = x.intersection(y)
	print(f)

	# 并集
	print("%s" % (x|y))
	f = x.union(y)
	print(f)

	# 差集
	print("%s" % (x-y))
	f = x.difference(y)
	print(f)

	# 对称差集 (项在x或y中，但不会同时出现在二者中)
	print("%s" % (x^y))
	print("%s" % (y^x))

	f = x.symmetric_difference(y)
	print(f)
	f = y.symmetric_difference(x)
	print(f)

	a = [11, 22, 33, 44, 11, 33, 22]
	b = set(a)
	print(b)

	for i in b:
		print i,

def test_set2():
	s = set([1, 3, 5, 7, 9])
	t = set("leiss")

	print(t)

	print("%s" % (s|t))

	print("%s" % (s&t))

	print("%s" % (s-t))
	print("%s" % (t-s))

	print("%s" % (t^s))
	print("%s" % (s^t))

	print(t)
	t.add('y')
	t.add('g')
	print(t)

	try:
		print(len(t))
		t.remove('Y')
	except Exception, e:
		print e
	
	print(len(t))
	t.remove('y')
	print(len(t))
	

def test_set3():
	s = set('leiss')
	t = set('sei')

	f = 'i' in s
	print(f)

	f = 'i' not in t
	print(f)

	#子集
	f = s.issubset(s)
	print(f)

	# 超集
	f = s.issuperset(t)
	print(f)

	# 浅复制
	print(s)
	f = s.copy()
	print(f)

	print('hash:')
	f = hash('i')
	print( f)

def test_set4():
	s = set('leiss')
	t = set('sei123')

	# s |= t
	s.update(t)
	print(s)

	# s &= t
	s = set('leiss')
	s.intersection_update(t)
	print(s)

	# s -= t
	s = set('leiss')
	s.difference_update(t)
	print(s)

	s = set('leiss')
	s.symmetric_difference_update(t)
	print(s)

	s =set('leiss')
	print(s)
	s.add('I')
	print(s)
	s.remove('i')
	print(s)
	s.pop()
	print(s)
	s.clear()
	print(s)

if __name__ == "__main__":
	test_set()
	test_set2()
	test_set3()
	test_set4()

