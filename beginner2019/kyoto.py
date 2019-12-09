import requests


BASE_URL = 'https://kyoto-city.herokuapp.com/'
for i in range(1, 501):
    url = '{}/kyoto_{:03}'.format(BASE_URL, i)
    txt = requests.get(url).text
    print(str(i) + ' ')
    if 'Sorry' not in txt:
        print(txt)
    else:
        print("not found")
