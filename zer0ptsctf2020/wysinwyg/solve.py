import string
import struct


d = dict()
for ch in string.printable:
    d[pow(ord(ch), 0x5beb, 0x8bae6fa3)] = ch

with open("./table.bin", "rb") as f:
    data = f.read()

flag = ''
for i in range(0, len(data), 8):
    k = struct.unpack('<Q', data[i:i + 8])[0]
    flag += d[k]
print(flag)


# zer0pts{sysc4ll_h00k1ng_1s_1mp0rt4nt}
