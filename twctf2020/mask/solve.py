import base64


def solve():
    with open('./chall.txt') as f:
        lines = f.readlines()
    can = ''
    for line in lines:
        addr, mask = line.split('/')
        addr_last = int(addr.split('.')[-1])
        mask_last = int(mask.split('.')[-1])
        can += chr(addr_last & ~mask_last)
    print(base64.b64decode(can).decode())


if __name__ == '__main__':
    solve()


# TWCTF{Are-you-using-a-mask?}
