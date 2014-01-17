# encoding: utf-8
# File Name: loggingdemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Fri 17 Jan 2014 10:13:28 PM CST
#########################################################################
#!/usr/bin/python

import logging
import logging.handlers

def loggertest():
	LOG_FILE = 'tst.log'
	
	handler = logging.handlers.RotatingFileHandler(LOG_FILE, maxBytes = 1024*1024, backupCount=5)
	fmt = '%(asctime)s - %(filename)s:%(lineno)s - %(levelname)s - %(message)s'
	formatter = logging.Formatter(fmt)
	handler.setFormatter(formatter)
	
	logger = logging.getLogger('tst')
	logger.addHandler(handler)
	logger.setLevel(logging.DEBUG)
	
	logger.info('info msg')
	logger.debug('debug msg')

def main():
	logger = logging.getLogger()
	logger.setLevel(logging.DEBUG)

	handler = logging.handlers.TimedRotatingFileHandler("test.log", 'D')
	fmt = logging.Formatter("%(asctime)s - %(pathname)s - %(filename)s - \
			%(module)s - %(funcName)s - %(lineno)s - %(levelname)s - %(message)s")
	handler.setFormatter(fmt)
	logger.addHandler(handler)

	logger.debug("debug msg")
	logger.info("info msg")
	logger.warn("warn msg")
	logger.warning("warning msg")
	logger.error("error msg")
	logger.fatal("fatal msg")
	logger.critical("critical msg")



if __name__ == "__main__":
#	loggertest()
	main()
