# encoding: utf-8
# File Name: threaddemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Mon 20 Jan 2014 09:23:24 PM CST
#########################################################################
#!/usr/bin/python

import threading
import time

#method 1: pass the function to thread's constructor
def func():
	print 'passwd by func()'

t = threading.Thread(target=func)
t.start()

# method 2: inherited from Thread by rewriting run()
class MyThread(threading.Thread):
	def run(self):
		print 'extended by class'

t = MyThread()
t.start()

print '\n----------------'
print '我是漂亮的分割线'
print '---------------\n'

#join()

def context(tJoin):
	print 'in threadContext.'
	tJoin.start()

	#will block tContext until threadJoin ended.
	tJoin.join()

	print 'out threadContext'

def join():
	print 'in threadJoin.'
	time.sleep(1)
	print 'out threadJoin.'

tJoin = threading.Thread(target=join)
tContext = threading.Thread(target=context, args=(tJoin,))

tContext.start()

print '\n----------------'
print '我是漂亮的分割线'
print '---------------\n'

#lock
data = 0
lock = threading.Lock()

def func():
	global data
	print '%s acquire lock...' % threading.currentThread().getName()

	#thread will be blocked until getting lock or after timeout 
	if lock.acquire():
		print '%s get the lock.' % threading.currentThread().getName()
		data += 1
		time.sleep(2)
		print '%s release lock...' % threading.currentThread().getName()

		#release() will release lock
		lock.release()
	
t1 = threading.Thread(target=func)
t2 = threading.Thread(target=func)
t3 = threading.Thread(target=func)
t1.start()
t2.start()
t3.start()

print '\n----------------'
print '我是漂亮的分割线'
print '---------------\n'

#RLock

rlock = threading.RLock()

def func():
	# first time to acquire lock
	print '%s acquire lock...' % threading.currentThread().getName()
	if rlock.acquire():
		print '%s get the lock.' % threading.currentThread().getName()
		time.sleep(2)

		# second time to acquire lock
		print '%s acquire lock again...' % threading.currentThread().getName()
		if rlock.acquire():
			print '%s get the lock.' % threading.currentThread().getName()
			time.sleep(2)

		# first time to release lock
		print '%s release lock...' % threading.currentThread().getName()
		rlock.release()
		time.sleep(2)

		#the second time to release lock
		print '%s release lock...' % threading.currentThread().getName()
		rlock.release()

t1 = threading.Thread(target=func)
t2 = threading.Thread(target=func)
t3 = threading.Thread(target=func)
t1.start()
t2.start()
t3.start()

print '\n----------------'
print '我是漂亮的分割线'
print '---------------\n'

#condition

product = None

con = threading.Condition()

def produce():
	global product

	if con.acquire():
		while True:
			if product is None:
				print 'produce...'
				product = 'anything'

				con.notify()

			con.wait()
			time.sleep(2)

def consume():
	global product

	if con.acquire():
		while True:
			if product is not None:
				print 'consume...'
				product = None
	
				con.notify()
	
			con.wait()
			time.sleep(2)

#p = threading.Thread(target=produce)
#v = threading.Thread(target=consume)
#v.start()
#p.start()

print '\n----------------'
print '我是漂亮的分割线'
print '---------------\n'

#Semaphore

semaphore = threading.Semaphore(2)

def func():

	# require Semaphore, if successful, count--; when count = 0, blocked
	print '%s acquire semaphore...' % threading.currentThread().getName()
	if semaphore.acquire():

		print '%s get semaphore' % threading.currentThread().getName()
		time.sleep(4)

		# release semaphore, count++
		print '%s release semaphore' % threading.currentThread().getName()
		semaphore.release()

t1 = threading.Thread(target=func)
t2 = threading.Thread(target=func)
t3 = threading.Thread(target=func)
t4 = threading.Thread(target=func)
t1.start()
t2.start()
t3.start()
t4.start()

time.sleep(2)

#the main thread that don't acquire semaphore could release lock
# if using BoundedSemaphore, t4 will raise exception when release semaphore
print 'MainThread release semaphore without acquire'
semaphore.release()


print '\n----------------'
print '我是漂亮的分割线'
print '---------------\n'

# Event

event = threading.Event()
print("isSet: " + str(event.isSet()))
	
def funcEvent():
	print '%s wait for event...' % threading.currentThread().getName()
	event.wait()

	print '%s recv event.' % threading.currentThread().getName()

t1 = threading.Thread(target=funcEvent)
t2 = threading.Thread(target=funcEvent)
t1.start()
t2.start()

time.sleep(2)

# send event notify
print 'MainThread set event.'
event.set()
print("isSet2: " + str(event.isSet()))

print '\n----------------'
print '我是漂亮的分割线'
print '---------------\n'

#Timer
def funcTimer():
	print 'hello Timer!'

timer = threading.Timer(5, funcTimer)
timer.start()

print '\n----------------'
print '我是漂亮的分割线'
print '---------------\n'

#local

local = threading.local()
local.tname = 'main'

def funclocal():
	local.tname = 'not main'
	print local.tname

t1 = threading.Thread(target=funclocal)
t1.start()
t1.join()

print local.tname

print '\n----------------'
print '我是漂亮的分割线'
print '---------------\n'

#example

alist = None
condition1 = threading.Condition()

def doSet():
	if condition1.acquire():
		print(threading.current_thread().getName())
		while alist is None:
			condition1.wait()

		print("len(alist) = " + str(len(alist))) #10
		for i in range(len(alist))[::-1]:
			alist[i] = i
		condition1.release()

def doPrint():
	if condition1.acquire():
		print(threading.current_thread().getName())
		while alist is None:
			condition1.wait()
		for i in alist:
			print i,
		print
		condition1.release()
	
def doCreate():
	global alist
	if condition1.acquire():
		print(threading.current_thread().getName())
		if alist is None:
			alist = [0 for i in range(10)]

			condition1.notifyAll()
		condition1.release()

tset = threading.Thread(target=doSet, name='tset')
tprint = threading.Thread(target=doPrint, name='tprint')
tcreate = threading.Thread(target=doCreate, name='tCreate')
tset.start()
tprint.start()
tcreate.start()


		

