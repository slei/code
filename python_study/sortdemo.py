# encoding: utf-8
# File Name: sortdemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Sat 11 Jan 2014 11:03:14 PM CST
#########################################################################
#!/usr/bin/python

def test_sort():
	print 'sort'
	d = {"a":"it", "b":"leiss", "c":"man", "d":2040}
	print(d)

	d['h'] = "lei"
	print(d)

	del(d['h'])
	print(d)

	# 遍历字典
	for k in d:
		print "dict[%s] = " % k, d[k]
	
	for k in d:
		print("dict[%s] = %s" % (k, d[k]))
	
	# items()遍历
	for k, v in d.items():
		print("dict[%s] = %s" % (k, v))
	
	for k, v in d.iteritems():
		print("dict[%s] = %s" % (k, v))
	
	for k, v in zip(d.iterkeys(), d.itervalues()):
		print("dict[%s] = %s" % (k, v))
	
	for k in d.keys():
		print("dict[%s] = %s" % (k, d[k]))
	

def test_sort2():
	print 'sort2'
	d = {"a":("it", "leiss"), "b":{"e":"blog", "f":"forum"}, "c":["sun", "boy",
		2050] }
	print(d)

	print(d['a'])
	print(d['a'][0])
	print(d['b'])
	print(d['b']['e'])
	print(d['c'])
	print(d['c'][1])
	print(d['c'][2])

	d2 = d['b']
	for k in d2:
		print("%s : %s" % (k, d2[k]))

	#update dict
	d = {"a":"it", "b":"leiss"}
	f = {"a":"blog", "c":"forum"}
	d.update(f)
	print d

	d = {}
	d.setdefault("a")
	print d

	d.setdefault("b", 0)
	print d

import copy
def test_sort3():
	print 'sort3'
	d = {"a":"it", "b":"leiss", "c":"blog", "d":"forum"}

	# shallow copy for dictionary
	print 'Shallow Copy:'
	f = d.copy()
	print f

	d = {"a":"it", "b":"leiss", "x":{"c":"blog", "d":"forum"}}
	print d
	f = d.copy()
	print f
	d['x']['c'] = 'change'
	print d
	print f

	# deep copy
	print 'Deep Copy'
	d = {"a":"it", "b":"leiss", "x":{"c":"blog", "d":"forum"}}
	print d
	f = copy.deepcopy(d)
	print f
	d['x']['c'] = 'change'
	print d
	print f

def test_sort4():
	print 'sort4'
	d = {"a":1, "c":7, "e":5, "d":9, "b":3}
	print d

	# sorted by key
	for k, v in sorted(d.items(), key=lambda x:x[0]):
		print(k, v)
	
	for k in sorted(d.keys()):
		print(k, d[k])
	
	l = list(d.keys())
	l.sort()
	for k in l:
		print(k, d[k])
	
	# sorted by value
	for k, v in sorted(d.items(), key=lambda x:x[1]):
		print(k,v)
	
	# sorted reversely by value
	for k, v in sorted(d.items(), key=lambda x:x[1], reverse = True):
		print(k,v)
	
	for k, v in sorted(d.items(), lambda x, y: cmp(x[1], y[1]), reverse =
			True):
		print(k,v)

if __name__ == "__main__":
	test_sort()
	test_sort2()
	test_sort3()
	test_sort4()
