from datetime import datetime
from sqlalchemy import Column, Integer, String, DateTime, ForeignKey, Boolean
from sqlalchemy_utils import UUIDType
from sqlalchemy.orm import relationship
from flask_login import UserMixin
from flask import abort
import hashlib
import uuid
import json
import os

from constants import genders, jobs, zones
from database import db

class User(db.Model, UserMixin):
    __tablename__ = 'users'

    id = Column(Integer, primary_key=True, autoincrement=True)
    created_at = Column(DateTime, nullable=False, default=datetime.now)
    # required information
    username = Column(String(32), nullable=False, unique=True)
    password = Column(String(64), nullable=False)
    profile = Column(String(255), nullable=False)    
    email = Column(String(255), nullable=False)
    # optional information
    gender = Column(String(20), nullable=True)
    job = Column(String(64), nullable=True)
    zone = Column(String(20), nullable=True)
    
    snippets = relationship("Snippet", backref="user")

    def __init__(self, username, password, email, profile):
        self.username = username
        self.password = hashlib.sha256(password.encode()).hexdigest()
        self.email = email
        self.profile = profile
        
        self.gender = genders[0]
        self.job = jobs[0]
        self.zone = zones[0]

    def get_id(self):
        return self.username
            
    def verify_password(self, password):
        return self.password == hashlib.sha256(password.encode()).hexdigest()

class Snippet(db.Model):
    __tablename__ = 'snippets'
    
    id = Column(UUIDType(binary=False), primary_key=True, default=uuid.uuid4)
    user_id = Column(ForeignKey('users.id'), nullable=False)
    title = Column(String(255), nullable=False)        
    content = Column(String(65535), nullable=False)        
    created_at = Column(DateTime, nullable=False, default=datetime.now)
    crawled = Column(Boolean, nullable=False)

    acl = Column(String(65535), nullable=False)    
    
    def __init__(self, user_id, title, content, permissions):
        self.user_id = user_id
        self.title = title
        self.content = content
        self.permissions = permissions
        self.crawled = False

    @property
    def permissions(self):
        return json.loads(self.acl)

    @permissions.setter
    def permissions(self, raw_permissions):
        # Split permission by '-'
        # 'key-value'
        # permissions[key] = value
        permissions = {
        }
        for f in raw_permissions:
            k, v = f.split('-')[0], '-'.join(f.split('-')[1:])
            if k in permissions:
                permissions[k] += "|" + v
            else:
                permissions[k] = v
            
        user_attributes = list(filter(lambda x: not x.startswith('_'), dir(User)))        
        for x in permissions.keys():
            if x not in user_attributes or callable(getattr(User, x)):
                abort(400)
                
        self.acl = json.dumps(permissions)
