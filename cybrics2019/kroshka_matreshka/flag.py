# uncompyle6 version 3.3.5
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.5.2 (default, Nov 12 2018, 13:43:14) 
# [GCC 5.4.0 20160609]
# Embedded file name: ./1.py
# Size of source mod 2**32: 439 bytes


def decode(data, key):
    idx = 0
    res = []
    for c in data:
        res.append(chr(c ^ ord(key[idx])))
        idx = (idx + 1) % len(key)

    return res


flag = [
 40, 11, 82, 58, 93, 82, 64, 76, 6, 70, 100, 26, 7, 4, 123, 124, 127, 45, 1, 125, 107, 115, 0, 2, 31, 15]
# print('Enter key to get flag:')
# key = input()
# if len(key) != 8:
#     print('Invalid len')
#     quit()

# Guess key from the fact that the first 8 bytes of the decoded flag will be 'cybrics{'
key = 'Kr0H4137'
res = decode(flag, key)
print(''.join(res))
# okay decompiling result.pyc
