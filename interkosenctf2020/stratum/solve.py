import sys

from functools import reduce
from z3 import *


KEY = b'asdfghjklzxcvbnm'

INV_MAP = {b's': [b'!', b'1', b'A', b'Q', b'a', b'q'], b'd': [b'"', b'2', b'B', b'R', b'b', b'r'], b'f': [b'#', b'3', b'C', b'S', b'c', b's'], b'g': [b'$', b'4', b'D', b'T', b'd', b't'], b'h': [b'%', b'5', b'E', b'U', b'e', b'u'], b'j': [b'&', b'6', b'F', b'V', b'f', b'v'], b'k': [b"'", b'7', b'G', b'W', b'g', b'w'], b'l': [b'(', b'8', b'H', b'X', b'h', b'x'], b'z': [b')', b'9', b'I', b'Y', b'i', b'y'], b'x': [b'*', b':', b'J', b'Z', b'j', b'z'], b'c': [b'+', b';', b'K', b'[', b'k', b'{'], b'v': [b',', b'<', b'L', b'\\', b'l', b'|'], b'b': [b'-', b'=', b'M', b']', b'm', b'}'], b'n': [b'.', b'>', b'N', b'^', b'n', b'~'], b'm': [b'/', b'?', b'O', b'_', b'o'], b'a': [b'0', b'@', b'P', b'`', b'p']}




solver = Solver()


def pshufb(xmm1, xmm2):
    ret = BitVec('ret', 0x10 * 8)
    for i in range(1, 16):
        ret = Concat(ret, extract(xmm1, extract(xmm2, i, 1) % 16, 1))
        solver.add(extract(ret, i, 1) == (xmm1 >> extract(xmm2, i, 1) % 16))
    return ret

def popcnt(b):
    n = b.size()
    bits = [Extract(i, i, b) for i in range(n)]
    bvs  = [Concat(BitVecVal(0, n - 1), b) for b in bits]
    nb   = reduce(lambda a, b: a + b, bvs)
    return nb


def lzcnt(expr):
    # 63 - "bsr"
    size = expr.size()
    res = BitVec('res', 8)
    for i in range(size - 1, 0, -1):
        index = - i % size
        res = If((expr & (1 << index)) != 0, index, res)
    return 63 - res


def extract(bv, start, size):
    return Extract(start * 8 - 1 + size * 8, start, bv)


def main():
    if len(sys.argv) < 2:
        print("Provide encrypted file")
        return
    with open(sys.argv[1], 'rb') as f:
        enc_data = f.read()

    key = BitVec('key', 16 * 8)
    for i in range(16):
        solver.add(extract(key, i, 1) == ord(KEY[i]))
        enc_bytes = []

    for i in range(0x80):
        enc_bytes.append(BitVecVal(ord(enc_data[i]), 8))

    flag = BitVec('flag', 0x40 * 8 + 0x80 * 8)
    for i in range(0x40):
        solver.add(0x21 <= Extract(i * 8 - 1, i * 8, flag))
        solver.add(0x7f >= Extract(i * 8 - 1, i * 8, flag))

    for i in range(0x80):
        solver.add(extract(flag, 0x40 + i, 1) == BitVecVal(ord(enc_data[i], 8)))


    for i in range(4):
        # TODO overlap flag
        xmm2 = extract(flag, i * 0x10, 0x10)
        r10 = (i * 0x10 + 0x10) - ((i * 0x10 + 0x10) >> 6 << 6)
        xmm3 = extract(flag, r10, 0x10)

        shuffled = pshufb(key, xmm2)
        for j in range(16):
            p = extract(shuffled, j, 1)
            solver.add(p, enc_bytes[i * 0x20, + j], 8))

        for j in range(16):
            r11 = extract(xmm3, j, 1)
            eax = extract(xmm2, j, 1)
            bx = popcnt(eax) << 4
            eax = eax << 8
            dx = lzcnt(eax)
            bx = bx | dx
            bl = bx ^ r11
            solver.add(enc_bytes(i * 0x20 + 0x10 + j), 8) == bl)
