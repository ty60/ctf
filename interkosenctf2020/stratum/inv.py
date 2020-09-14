KEY = b'asdfghjklzxcvbnm'

inv_map = {}
for i in range(0x21, 0x7f):
    ch = chr(i).encode()
    m = KEY[ord(ch) % 16]
    if chr(m) in inv_map:
        inv_map[chr(m)].append(ch)
    else:
        inv_map[chr(m)] = [ch]
print(inv_map)
