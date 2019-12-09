# -*- coding: utf-8 -*-

from flask import Blueprint, abort, render_template, redirect, url_for, request
from flask_login import login_required, current_user
from database import db
import re
import os
from functools import wraps
from timeout_decorator import timeout

from models import User, Snippet
import constants

snippets_controller = Blueprint('snippets', __name__, url_prefix='/users')

@timeout(constants.timeout, use_signals=False)
def search(r, v):
    return re.findall(r, v)

@snippets_controller.route('/<username>/<snippet_id>', methods=["GET"])
@login_required
def show_snippet(username, snippet_id):
    snippet = db.session.query(Snippet).filter(Snippet.id == snippet_id).first()
    if snippet is None:
        abort(404)
        
    if snippet.user.username != current_user.username:
        # attribute: job, gender, zone
        # r: Others, Female, Europe...
        # Can arbitrary inject attribute and r to database.
        for attribute, r in sorted(snippet.permissions.items(), key=lambda x: x[0]):
            # Here we use regex for extensibility.
            # However ReDoS is a powerful attack. So we set the timeout.
            try:
                # search('regex_pat', getattr(target_user, 'username'))
                if search(r, getattr(current_user, attribute)) == []:
                    abort(403)
            except Exception as e: # timeout                
                abort(403)
                
    return render_template('snippets/snippet.html',
                           snippet=snippet,
                           app_origin="http://challenge:8000")

@snippets_controller.route('/<username>/<snippet_id>/crawled', methods=["GET"])
@login_required
def snippet_crawled(username, snippet_id):
    snippet = db.session.query(Snippet).filter(Snippet.id == snippet_id).first()
    if snippet is None:
        abort(404)
        
    if current_user.username == os.getenv('ADMIN_USERNAME'):
        snippet.crawled = True
        db.session.commit()                        
        return 'OK'
    else:
        abort(403)

@snippets_controller.route('/<username>/<snippet_id>/edit', methods=["GET"])
@login_required
def edit_snippet(username, snippet_id):    
    snippet = db.session.query(Snippet).filter(Snippet.id == snippet_id).first()
    if snippet is None:
        abort(404)
    if  snippet.user.username != current_user.username:
        abort(403)

    return render_template('snippets/edit.html', snippet=snippet)

@snippets_controller.route('/<username>/<snippet_id>/edit', methods=["POST"])
@login_required
def do_edit_snippet(username, snippet_id):
    snippet = db.session.query(Snippet).filter(Snippet.id == snippet_id).first()
    if snippet is None:
        abort(404)
    if  snippet.user.username != username:
        abort(403)

    snippet.title = request.form.get('title', snippet.title)
    snippet.content = request.form.get('content', snippet.content)
    snippet.permissions = request.form.getlist('filter')
    db.session.commit()
    
    return redirect(url_for('snippets.show_snippet', username=snippet.user.username, snippet_id=snippet.id))
