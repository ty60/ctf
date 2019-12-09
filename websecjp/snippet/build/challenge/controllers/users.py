# -*- coding: utf-8 -*-

from flask import Blueprint, abort, render_template, redirect, url_for, request
from flask_login import login_required, current_user
from database import db
from models import User, Snippet
from functools import wraps
import re
from timeout_decorator import timeout
import constants

users_controller = Blueprint('users', __name__, url_prefix='/users')

@timeout(constants.timeout, use_signals=False)
def search(r, v):
    return re.findall(r, v)

@users_controller.route('/<username>', methods=["GET"])
    user = db.session.query(User).filter(User.username == username).first()
    
    if user is None:
        abort(404)
        
    snippets = []
    for snippet in user.snippets:
        try:
            if snippet.user.username != current_user.username:
                for attribute, r in sorted(snippet.permissions.items(), key=lambda x: x[0]):
                    if search(r, getattr(current_user, attribute)) == []:
                        raise Exception
            snippets.append(snippet)
        except:
            continue
    
    return render_template('users/user.html', user=user, snippets=snippets)
