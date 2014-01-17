# encoding: utf-8
# File Name: rename.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Sun 12 Jan 2014 09:08:31 PM CST
#########################################################################
#!/usr/bin/python

import re
import os
import time

# str.split(string) 分割字符串
# .join(list) 将列表组成字符串

def change_name(path):
	global i
	if not os.path.isdir(path) and not os.path.isfile(path):
		return False
	if os.path.isfile(path):
		file_path = os.path.split(path) #split dir and file
		print(file_path)
	
		lists = file_path[1].split('_') # split file name and extern file name
		file_ext = lists[-1]
		img_ext = ['tpy']
		if file_ext in img_ext:
			path2 = file_path[0]+'/'+lists[0]+'.py'
			os.rename(path, path2)
			print("old = %s" % path)
			print("new = %s" % path2)
			i+=1 # note：i in here is a trap
	elif os.path.isdir(path):
		for x in os.listdir(path):
			change_name(os.path.join(path, x))

py_dir = '\\home\\slei\\code\\py'
print py_dir
py_dir = py_dir.replace('\\', '/')
print py_dir

start = time.time()
i = 0

change_name(py_dir)

c = time.time() - start

print('程序运行耗时:%12.10f'%(c))
print('总共处理了 %s 个文件'%(i))

