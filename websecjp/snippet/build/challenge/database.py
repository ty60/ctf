# -*- coding: utf-8 -*-

import os
import redis as r

from flask_sqlalchemy import SQLAlchemy
db = SQLAlchemy()

redis = r.Redis(host='redis', port=6379)

def init_db(app):
    app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://app:password@mysql:3306/app'

    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

    db.init_app(app)    
    with app.app_context():
        db.create_all()        
