# -*- coding: utf-8 -*-

import os
import sys
from datetime import datetime, timedelta
import functools

from flask import Flask, request, render_template
from flask_wtf.csrf import CSRFProtect 

from database import db, init_db
from models import User, Snippet
from filters import init_filters
from auth import init_auth
from dummy import init_dummy
from csp import init_csp
from constants import init_constants

from controllers.snippets import snippets_controller
from controllers.users import users_controller
from controllers.root import root_controller

app = Flask(__name__)
app.secret_key = os.urandom(32)

app.register_blueprint(snippets_controller)
app.register_blueprint(users_controller)
app.register_blueprint(root_controller)

csrf = CSRFProtect()
csp_header = ""

@app.errorhandler(404)
def page_not_found(e):
    return render_template('error/404.html'), 404

@app.errorhandler(403)
def not_authorized(e):
    return render_template('error/403.html'), 403

@app.after_request
def add_headers(response):
    response.headers["Content-Security-Policy"] = csp_header
    return response

csp_header = init_csp()
init_db(app)        
init_auth(app)
init_filters(app)
init_dummy(app)
init_constants(app)
csrf.init_app(app)
    
if __name__ == '__main__':
    app.run('0.0.0.0', port=8000)
