set arch arm
target remote localhost:12345
# b vuln
# pop {fp, pc}
b *0x10514
# return from gets
# b *0x17088
b mprotect
gef
c
