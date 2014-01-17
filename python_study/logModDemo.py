# encoding: utf-8
# File Name: logModDemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Fri 17 Jan 2014 11:08:57 PM CST
#########################################################################
#!/usr/bin/python

import logging
logger = logging.getLogger('main.Mod')
logger.info('info of loggingdemo.logModDemo')

def testLogger():
	logger.debug('this is loggingdemo.logModDemo testLogger()')
	logger.info('start import module \'logSubModDemo\'...')
	import logSubModDemo
	logSubModDemo.testLogger()
