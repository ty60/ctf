flag = 'TSGCTF{'
flag += '0' * (0x28 - 0x7 - 0x1)
flag += '}'

with open('flag', 'w') as f:
    f.write(flag)
