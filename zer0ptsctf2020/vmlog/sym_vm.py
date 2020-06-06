import sys

import claripy

from program import program


# load log
f = open('./log.txt')
f.readline()
log = list()
for l in f.readlines():
    if not l.startswith('['):
        buf_ans = l[::]
        break
    dump = l.rstrip().strip('[').rstrip(']')
    log.append(list(map(int, dump.split(','))))
    print(log[-1])
f.close()

# init VM
# reg = 0
reg = claripy.BVS("reg", 8 * 8)
reg = 0
# mem = [0 for _ in range(10)]
mem = list()
for i in range(10):
    mem.append(claripy.BVS("mem[{}]".format(i), 8 * 8))
    mem[i] = 0
p = 0
pc = 0
buf = ""

# claripy stuff
solver = claripy.Solver()
byte_id = 0

inputs = list()

print(program)

while pc < len(program):
    op = program[pc]

    # REGISTER
    if op == "+":
        reg += 1
    elif op == "-":
        reg -= 1
    # MEMORY <-> REGISTER
    elif op == "*":
        reg *= mem[p]
    elif op == "%":
        reg = mem[p] % reg
    elif op == "l":
        reg = mem[p]
    elif op == "s":
        mem[p] = reg
    # MEMORY
    elif op == ">":
        p = (p + 1) % 10
    elif op == "<":
        p = (p - 1) % 10
    # STDIN
    elif op == ",":
        print("Generate symbolic byte")
        # a = sys.stdin.buffer.read(1)
        a = claripy.BVS('input_{}'.format(byte_id), 8)
        byte_id += 1
        # if not a:
        #     reg = 0
        # else:
        #     reg += ord(a)
        reg += a
    elif op == "p":
        buf += str(reg)
    elif op == "[":
        if reg == 0:
            cnt = 1
            while cnt != 0:
                pc += 1
                if program[pc] == "[":
                    cnt += 1
                if program[pc] == "]":
                    cnt -= 1
    elif op == "]":
        if reg != 0:
            cnt = 1
            while cnt != 0:
                pc -= 1
                if program[pc] == "[":
                    cnt -= 1
                if program[pc] == "]":
                    cnt += 1
    elif op == "M":
        dump = log.pop(0)
        for i, d in enumerate(dump):
            solver.add(mem[i] == d)
        print("mem: ", mem)
        print("reg: ", reg)
        print("p: ", p)
        print("pc: ", pc)
        print("buf: ", buf)
        print("")

    pc += 1

print(buf)
