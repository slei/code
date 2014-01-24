# encoding: utf-8
# File Name: msgqueuedemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Fri 24 Jan 2014 10:59:29 PM CST
#########################################################################
#!/usr/bin/python

import Queue
import threading
import urllib, urllib2
import time

# queue size
myQueue = Queue.Queue(maxsize = 0)
queue = Queue.Queue()
hosts = ["http://1", "http://2", "http://3"]

lock = threading.Lock()
def printMsg(msg):
	global lock
	if lock.acquire():
		print(msg)
		lock.release()

class ThreadUrl(threading.Thread):
	def __init__(self, queue, htint):
		threading.Thread.__init__(self)
		self.queue = queue
		self.Ht = htint

	def run(self):
		while True:
			host = self.queue.get()
			printMsg("thread id " + self.getName() + ";\t htint: " + \
					str(self.Ht) + "host :" + host)

			printMsg("queue size: %d " % self.queue.qsize())
			if self.queue.empty():
				printMsg("queue is empty of " + self.getName())
			self.queue.task_done()

def main():
	for i in range(5):
		t = ThreadUrl(queue, i)
		t.setDaemon(True)
		t.start()
		for host in hosts:
			print("queue put " + host)
			queue.put(host)
		queue.join()

if __name__ == "__main__":
	start = time.time()
	main()
	time.sleep(1)
	costTime = time.time() - start -1;
	printMsg("Elapsed time: %s (s)" % costTime)


