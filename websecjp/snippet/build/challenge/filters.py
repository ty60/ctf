# -*- coding: utf-8 -*-
import hashlib
from jinja2 import Markup

def gravatar(value):
    return 'https://www.gravatar.com/avatar/' + hashlib.md5(value.email.strip().lower().encode()).hexdigest() + '?r=pg&d=mp'

def convert_to_tag(line):
    if line.startswith('#'):
        components = line.split()
        level = components[0].count('#')
        headline = ' '.join(components[1:])
        return Markup('<h{}>'.format(level)) + Markup.escape(headline) + Markup('</h{}>'.format(level))
    else:
        return Markup('<p>') + Markup.escape(line) + Markup('</p>')
    
def mdlike(value):
    return Markup(''.join([
        convert_to_tag(l)
        for l
        in map(lambda x: x.strip(), value.split('\n'))
    ]))


def init_filters(app):
    app.jinja_env.filters['gravatar'] = gravatar
    app.jinja_env.filters['mdlike'] = mdlike
