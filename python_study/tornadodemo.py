# encoding: utf-8
# File Name: tornadodemo.py
# Author: leiss
# mail: lss.linux@gmail.com
# Created Time: Sat 18 Jan 2014 10:19:00 PM CST
#########################################################################
#!/usr/bin/python

import tornado.ioloop
import tornado.web

class MainHandler(tornado.web.RequestHandler):
	def get(self):
		self.write('<html><body><form action="/" method="post">'
				'<input type="text" name="message">'
#				'<input type="file" name="file">'
				'<input type="submit" value="Submit">'
				'</form></body></html>')

	def post(self):
		self.set_header("Content-Type", "text/plain")
		self.write("You wrote " + self.get_argument("message"))
#		self.write("You upload file" + self.request.files[0])

class TempHandler(tornado.web.RequestHandler):
	def get(self):
		items = ["Item 1", "Item 2", "Item 3"]
		self.render("template.html", title="My title", items=items)

class StoryHandler(tornado.web.RequestHandler):
	def get(self, story_id):
		self.write("Your requested the story " + story_id)

application = tornado.web.Application([
	(r"/", MainHandler),
	(r"/story/([0-9]+)", StoryHandler),
])

tempApplication = tornado.web.Application([
	(r"/", TempHandler),
])

if __name__ == "__main__":
	print("look at: http://localhost:8888")
	application.listen(8888)
	tempApplication.listen(8880)
	tornado.ioloop.IOLoop.instance().start()
