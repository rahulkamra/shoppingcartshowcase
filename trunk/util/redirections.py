import os, cgi, __main__
from google.appengine.ext.webapp import template
from google.appengine.ext.webapp.util import run_wsgi_app
import wsgiref.handlers
from google.appengine.ext import webapp
from google.appengine.api import memcache
import logging


class GetMainPage(webapp.RequestHandler):
    def get(self):
        self.redirect('staticFiles/ShoppingCartAppEngine.html')
       

################################################################################
application = webapp.WSGIApplication(
                                     [('/', GetMainPage),
                                      
                                          ],
                                     
                                     debug=True)

def main():
  run_wsgi_app(application)

if __name__ == "__main__":
  main()
