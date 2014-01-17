# encoding: utf-8
#########################################################################
# File Name: printdemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Sat 11 Jan 2014 05:26:11 PM CST
#########################################################################
#!/usr/bin/python


import sys
reload(sys)
sys.setdefaultencoding("utf-8")

# %s format to string
from math import pi
def test_format():
	str = "hello %s, http://%s/blog"
	var = ("it-leiss", "112.124.8.169")
	print str % var
	
	print("%s %s %s" % (1, 2.3, ['one', 'two', 'three']))

	print("PI: %.10f" % pi)		#PI显示10位小数
	
	print("PI: %010.2f" % pi) #PI: 0000003.14
	print("PI: %010.6f" % pi) #PI: 003.141593
	
	print("PI: %-10.2f" % pi) #PI: 3.14
	print("PI: %-10.6f" % pi) #PI: 3.141593

	print("PI: %+10.2f" % pi) 
	print("PI: %+10.6f" % pi)

	print("PI: %10.2f" % pi)
	print("PI: %10.6F" % pi)

	print("PI: %010.2f" % pi)
	print("PI: % 10.2f" % pi)

	print("PI: %+10.2f" % pi)
	print("PI: %-+10.2f" % pi)
	print("PI: %+-10.2f" % pi)

# 模板字符串
from string import Template
def test_format2():
	s = Template('$x, hello $x')
	f = s.substitute(x = 'leiss.com')
	print(f)

	# 单词字母替换
	s = Template("It's ${x} blog")
	f = s.substitute(x='leiss\'s')
	print(f)

	# 用$$插入一个$符号
	s = Template("It's $$ blog $x")
	f = s.substitute(x="leiss")
	print(f)
	
	s = Template('A $name go to $blog')
	d = {}
	d['name'] = 'leiss'
	d['blog'] = '112.124.8.169/blog'
	f = s.substitute(d)
	print(f)


def test_format3():
	num = 20

	print("%d" % num)
	print("%u" % num)

	print("%o" % num)

	print("%x" % num)
	print("%X" % num)

	print("%f" % num)

	print("%e" % num)
	print("%E" % num)
	print("%g" % num)


def test_format4():
	print("'leiss'")
	print("\'leiss")

	print("\"leiss\"")
	print("\\leiss\\")
	print("/leiss/")

	print("aa\nbb")
	print("aa\bbb")

	print("aa\rbb")
	print("aa\000bb")

	
if __name__ == "__main__":
	test_format()
	test_format2()
	test_format3()
	test_format4()

