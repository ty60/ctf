# -*- coding: utf-8 -*-

from flask import Blueprint, redirect, url_for, request, render_template, Response
from flask_login import login_required, user_unauthorized, login_user, logout_user, current_user
from models import User, Snippet
from database import db, redis
from constants import jobs, zones, genders
from urllib.parse import urlparse
import re

root_controller = Blueprint('root', __name__, url_prefix='/')

@root_controller.route('/', methods=["GET"])
def home():
    if current_user.is_authenticated:
        return render_template('root/home.html',
                               snippets=current_user.snippets[:4],
                               message=request.args['reported'] if 'reported' in request.args else '')
    else:
        return redirect(url_for('root.login'))


@root_controller.route('/post', methods=["POST"])
@login_required
def post():
    title = request.form.get('title', '')
    content = request.form.get('content', '')
    permissions = request.form.getlist('filter')

    snippet = Snippet(current_user.id, title, content, permissions)
    db.session.add(snippet)
    db.session.commit()
    db.session.refresh(snippet)

    return redirect(url_for('snippets.show_snippet', username=current_user.username, snippet_id=snippet.id))


@root_controller.route('/report', methods=["POST"])
@login_required
def report():
    url = request.form.get('url', '')
    parsed_url = urlparse(url)
    if parsed_url.scheme in ['http', 'https']:        
        redis.rpush('query', url)
        return redirect(url_for('root.home') + '?reported=1')
    else:
        return redirect(url_for('root.home') + '?reported=0')

@root_controller.route('/login', methods=["GET"])
def login():    
    return render_template('root/login.html',
                           message=request.args['error'] if 'error' in request.args else '')

def isvalid(x):
    return x is not None and x != ''

@root_controller.route('/login', methods=["POST"])
def do_login():
    username = request.form['username']
    password = request.form['password']
    
    if not isvalid(username) or not isvalid(password):
        return redirect(url_for('root.login') + '?error=2')
    
    user = db.session.query(User).filter(User.username == username).first()
    
    if user != None and user.verify_password(password):
        login_user(user)
        return redirect(url_for('root.home'))
    else:
        return redirect(url_for('root.login') + '?error=0')

@root_controller.route('/register', methods=["POST"])
def do_register():
    username = request.form['username']
    password = request.form['password']
    email = request.form['email']
    
    if not isvalid(username) or not isvalid(password) or not isvalid(email):
        return redirect(url_for('root.login') + '?error=2')

    if re.match(r'^[a-zo0-9]+$', username) is None or len(username) < 8:
        return redirect(url_for('root.login') + '?error=3')
    
    user = db.session.query(User).filter(User.username == username).first()
    if user == None:
        user = User(username, password, email, '')
        db.session.add(user)
        db.session.commit()
        db.session.refresh(user)        
        login_user(user)        
        return redirect(url_for('root.home'))    
    else:
        return redirect(url_for('root.login') + '?error=1')
    
@root_controller.route('/logout', methods=["GET"])
@login_required
def logout():
    logout_user()
    return redirect(url_for('root.login'))

@root_controller.route('/settings', methods=["GET"])
@login_required
def settings():
    return render_template('root/settings.html')

@root_controller.route('/settings', methods=["POST"])
@login_required
def change_settings():
     current_user.email = request.form.get('email', current_user.email)
     current_user.profile = request.form.get('profile', current_user.profile)
     current_user.job = jobs[int(request.form.get('job', 0)) % len(jobs)]     
     current_user.gender = genders[int(request.form.get('gender', 0)) % len(genders)]     
     current_user.zone = zones[int(request.form.get('zone', 0)) % len(zones)]     
     db.session.commit()
     return redirect(url_for('root.settings'))
