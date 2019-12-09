from flask import abort 
from flask_login import LoginManager
from database import db
from models import User
login_manager = LoginManager()

def init_auth(app):
    login_manager.init_app(app)

@login_manager.user_loader
def load_user(user_id):
    return db.session.query(User).filter(User.username == user_id).first()

@login_manager.unauthorized_handler
def unauthorized():
    abort(403)
