# encoding: utf-8
# File Name: queuedemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Wed 22 Jan 2014 12:10:09 AM CST
#########################################################################
#!/usr/bin/python

import os
import multiprocessing
import time

#input worker
def inputQ(queue):
	info = str(os.getpid()) + ' (put): ' + \
	str(time.strftime("%Y-%m-%d__%H:%M:%S", time.localtime(time.time())))
	queue.put(info)

#output worker
def outputQ(queue, lock):
	info = queue.get()
	lock.acquire()
	print (str(os.getpid()) + '(get):' + info + "\n")
	lock.release()

#main
record1 = []
record2 = []
lock = multiprocessing.Lock()
queue = multiprocessing.Queue(3)

# input processes
for i in range(10):
	process = multiprocessing.Process(target=inputQ, args=(queue, ))
	process.start()
	record1.append(process)

# output processes
for i in range(10):
	process = multiprocessing.Process(target=outputQ, args=(queue, lock))
	process.start()
	record2.append(process)

for p in record1:
	p.join()

queue.close()

for p in record2:
	p.join()

