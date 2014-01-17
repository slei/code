#########################################################################
# File Name: urllib_demo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Thu 09 Jan 2014 11:53:37 PM CST
#########################################################################
#!/usr/bin/python

import urllib, urllib2

headers = {'Use-Agent':'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebkit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'}
url = "http://112.124.8.169/blog/"
req = urllib2.Request(url, headers=headers)
content = urllib2.urlopen(req).read()
print content
