import struct
import sys
import json
import claripy
import subprocess
from collections import Counter


class Data(object):
    """Data
    Read global variables.
    4 bytes width.
    """
    def __init__(self, binary, ro_begin, ro_end, mapped):
        self.mapped = mapped 
        with open(binary, 'rb') as f:
            f.seek(ro_begin)
            self.data = f.read(ro_end - ro_begin)

    def __getitem__(self, key):
        offset = key - self.mapped
        return struct.unpack("<I", self.data[offset:offset+4])[0]

chars = b"0123456789abcdef"


info_num_chars = (0x400f00, 0x40)
info_block_sum = (0x400f40, 0x20)
info_block_xor = (0x400f60, 0x20)
info_jump_sum = (0x400fa0, 0x20)
info_jump_xor = (0x400f80, 0x20)
info_char_type = (0x400fc0, 0x80)

skip_sum = 0x488

data = Data('./easy_crack_me', 0xee0, 0x1074, 0x400ee0)


char_c = Counter()
for i, ch in enumerate(chars):
    char_c[ch] += data[info_num_chars[0]+4*i]

block_sum = []
for a in range(info_block_sum[0], info_block_sum[0] + info_block_sum[1], 4):
    block_sum.append(data[a])

block_xor = []
for a in range(info_block_xor[0], info_block_xor[0] + info_block_xor[1], 4):
    block_xor.append(data[a])

jump_sum = []
for a in range(info_jump_sum[0], info_jump_sum[0] + info_jump_sum[1], 4):
    jump_sum.append(data[a])

jump_xor = []
for a in range(info_jump_xor[0], info_jump_xor[0] + info_jump_xor[1], 4):
    jump_xor.append(data[a])

char_type = []
for a in range(info_char_type[0], info_char_type[0] + info_char_type[1], 4):
    char_type.append(data[a])


solver = claripy.Solver()
flag_bytes = list()
for i in range(32):
    flag_bytes.append(claripy.BVS('flag_byte_{}'.format(i), 8))

# Add block constraints
for i in range(8):
    acc = flag_bytes[i * 4]
    for j in range(1, 4):
        acc += flag_bytes[i * 4 + j]
    solver.add(acc == block_sum[i])

    xor = flag_bytes[i * 4]
    for j in range(1, 4):
        xor ^= flag_bytes[i * 4 + j]
    solver.add(xor == block_xor[i])

# Add jump block constraints
for i in range(8):
    acc = flag_bytes[i]
    for j in range(1, 4):
        acc += flag_bytes[i + 8 * j]
    solver.add(acc == jump_sum[i])

    xor = flag_bytes[i]
    for j in range(1, 4):
        xor ^= flag_bytes[i + 8 * j]
    solver.add(xor == jump_xor[i])

# Add type constraints
for i in range(32):
    if char_type[i] == 0xff:
        solver.add(0x30 <= flag_bytes[i])
        solver.add(flag_bytes[i] <= 0x39)
    elif char_type[i] == 0x80:
        solver.add(0x61 <= flag_bytes[i])
        solver.add(flag_bytes[i] <= 0x66)
    else:
        raise Exception("Unexpected type")

# Add sum constraints
acc = flag_bytes[0]
for i in range(2, 32, 2):
    acc += flag_bytes[i]
solver.add(acc == skip_sum)

# Add concrete constraints
solver.add(flag_bytes[0x25-6] == 0x35)
solver.add(flag_bytes[0x7-6] == 0x66)
solver.add(flag_bytes[0xb-6] == 0x38)
solver.add(flag_bytes[0xc-6] == 0x37)
solver.add(flag_bytes[0x17-6] == 0x32)
solver.add(flag_bytes[0x1f-6] == 0x34)

if solver.check_satisfiability() == 'UNSAT':
    raise Exception("UNSAT")

candidates = [[] for _ in range(32)]
for i in range(32):
    res = solver.eval(flag_bytes[i], 10)
    candidates[i].append(list(res))


left = char_c
def find(now, depth):
    if depth == 32:
        print("TWCTF{" + now + "}")
        return

    for bs in candidates[depth]:
        for b in bs:
            if char_c[b] > 0:
                char_c[b] -= 1
                find(now + chr(b), depth + 1)
                char_c[b] += 1


find('', 0)


# TWCTF{df2b4877e71bd91c02f8ef6004b584a5}
