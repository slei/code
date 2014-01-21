# encoding: utf-8
# File Name: pipedemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Tue 21 Jan 2014 11:53:14 PM CST
#########################################################################
#!/usr/bin/python

import multiprocessing as multipro

def proc1(pipe):
	pipe.send('hello')
	print('proc1 recv:', pipe.recv())

def proc2(pipe):
	print('proc2 recv:', pipe.recv())
	pipe.send('hello, too')

#build a pipe
pipe = multipro.Pipe()

#Pass an end of the pipe to process 2
#Pass the other end of the pipe to process 1
p1 = multipro.Process(target=proc1, args=(pipe[0], ))
p2 = multipro.Process(target=proc2, args=(pipe[1], ))

p1.start()
p2.start()
p1.join()
p2.join()
