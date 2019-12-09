from flask import abort 
from flask_login import LoginManager
from database import db
from models import User
import os

def init_dummy(app):
    with open('/flag', 'r') as f:
        flag = f.read().strip()
        
    with app.app_context():
        user = db.session.query(User).filter(User.username == flag).first()
        if user is None:
            user = User(flag, flag, 'admin@admin.example', 'I am the admin of this website.')
            db.session.add(user)
            db.session.commit()
