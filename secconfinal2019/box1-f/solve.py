import sys
import json


addr_op = {
    0xbb6: 'a',
    0xbfe: 'b',
    0xC46: 'c',
    0xc8e: 'd',
    0xcd6: 'e',
    0xd1e: 'f',
    0xD6F: 1,
}

add_loop = 0xA31
mul_loop = 0xA94


BASE_ADDR = 0x557a93890000


def solve():
    with open("./box.trace") as f:
        trace = json.loads(f.read())

    for t in trace:
        if t["event"] != "branch":
            continue

        if t["branch_taken"]:
            continue

        addr = int(t["inst_addr"], 16) - BASE_ADDR
        if addr not in addr_op:
            continue

        sys.stdout.write(str(addr_op[addr]))

    sys.stdout.write('\n')


# 111111110012ce0010a1111b


if __name__ == '__main__':
    solve()
