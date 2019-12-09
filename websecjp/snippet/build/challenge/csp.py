import os
import glob
import base64

csp_template = "default-src 'none'; script-src 'self'; frame-src platform.twitter.com; style-src 'self' https://fonts.googleapis.com/css; require-sri-for script style; img-src *; base-uri 'none';"

def init_csp():
    return csp_template
