#########################################################################
# File Name: emaildemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Thu 09 Jan 2014 10:21:24 PM CST
#########################################################################
#!/usr/bin/python

import sys
import os

from email.mime.multipart import MIMEMultipart
from email.mime.base import MIMEBase
from email.mime.text import MIMEText

from email.utils import COMMASPACE,formatdate
from email import encoders

server = {
		'name' : 'smtp.qq.com',
		'user' : 'xxxxxxxx@qq.com',
		'passwd' : 'xxxxxx'
		}

def send_mail(server, fro, to, subject, text, files=[]):
	assert type(server) == dict
	assert type(to) == list
	assert type(files) == list

	msg = MIMEMultipart()
	msg['From'] = fro
	msg['Subject'] = subject
	msg['To'] = COMMASPACE.join(to)
	msg['Date'] = formatdate(localtime=True)
	msg.attach(MIMEText(text))

	for file in files:
		part = MIMEBase('application', 'octet-stream')
		part.set_payload(open(file, 'rb').read())
		encoders.encode_base64(part)
		part.add_header('Content-Disposition', 'attachment; filename="%s"' %
				os.path.basename(file))
		msg.attach(part)
	
	import smtplib
	smtp = smtplib.SMTP_SSL(server['name'])
	#smtp.set_debuglevel(1)
	#smtp.ehlo()
	#smtp.starttls()
	smtp.login(server['user'], server['passwd'])
	smtp.sendmail(fro, to, msg.as_string())
	smtp.quit()

	print("send email success!")

def printServer():
	name = server['name']
	user = server['user']
	passwd = server['passwd']

	print(name + ', ' + user + ', ' + passwd)

if __name__ == "__main__":
	to = ["lss.linux@gmail.com"]
	
	files = []
	for i in range(2):
		filename = "file_" + str(i)
		f = open(filename, 'w+')
		f.write("i am leiss.net" + str(i))
		f.close()
		files.append(filename)
	print files

	send_mail(server, server['user'], to, 'test python email', 'test from leiss.com', files)
