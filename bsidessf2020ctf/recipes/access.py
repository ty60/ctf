import requests


with open('./urllist.txt') as f:
    urls = f.readlines()

for i, url in enumerate(urls):
    print('{} / {}'.format(i, len(urls)))
    res = requests.get(url)
    if res.status_code != 404:
        print("!!!!!")
        print(url)
