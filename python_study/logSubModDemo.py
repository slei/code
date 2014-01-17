# encoding: utf-8
# File Name: logSubModDemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Fri 17 Jan 2014 11:14:29 PM CST
#########################################################################
#!/usr/bin/python

import logging
logger = logging.getLogger('main.Mod.subMod')
logger.info('info of loggingdemo.logModDemo.logSubModDemo')

def testLogger():
	logger.debug('this is loggingdemo.logModDemo.logSubModDemo()')
