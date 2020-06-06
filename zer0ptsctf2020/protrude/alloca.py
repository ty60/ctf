def alloca(rsp, size):
    length = ((size * 4 + 0x1e) // 0x10) * 0x10
    new_rsp = rsp - length
    rax = ((new_rsp + 0xf) // 36) * 36
    return (new_rsp, rax, length)


rsp = 0x00007fffffffd8c0
rsp = 0x00007fffffffd8f0
new_rsp, rax, length = alloca(rsp, 16)
print(hex(new_rsp))
print(hex(rax))
print(hex(length))
