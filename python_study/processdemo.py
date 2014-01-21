# encoding: utf-8
# File Name: processdemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Tue 21 Jan 2014 10:52:26 PM CST
#########################################################################
#!/usr/bin/python

import os
import threading
import multiprocessing

print(os.getuid())

print(os.getpid())
print(os.getppid())

print(os.getgid())
print(os.getgroups())

print(os.getenv("JAVA_HOME", ))

#worker fucntion
def worker(sign, lock):
	lock.acquire()
	print(sign, os.getpid())
	lock.release()

#Main
print('Main:', os.getpid())

#Multi-thread
record = []
lock = threading.Lock()
for i in range(5):
	thread = threading.Thread(target=worker, args=('thread', lock))
	thread.start()
	record.append(thread)

for thread in record:
	print(thread)
	thread.join()

#Multi-process
record = []
lock = multiprocessing.Lock()
for i in range(5):
	process = multiprocessing.Process(target=worker, args=('process', lock))
	process.start()
	record.append(process)

for process in record:
	print(process)
	process.join()

