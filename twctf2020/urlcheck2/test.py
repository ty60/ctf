import os, re, time, ipaddress, socket, requests, flask
host = socket.gethostbyname('ty60.dev')
print(host)
res = requests.get('http://ty60.dev:9999/admin-status')
print(res.text[:100])
