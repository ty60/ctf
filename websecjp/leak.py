from http.server import SimpleHTTPRequestHandler
from http.server import HTTPServer


class CSSInjectionRequestHandler(SimpleHTTPRequestHandler):
    def do_GET(self):
        print(self.requestline)


server = HTTPServer(('localhost', 7070), CSSInjectionRequestHandler)
server.serve_forever()
