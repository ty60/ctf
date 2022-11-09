target remote localhost:1234
add-auto-load-safe-path ./linux-5.14.3/scripts/gdb/vmlinux-gdb.py
symbol-file ./linux-5.14.3/vmlinux
directory ./linux-5.14.3
add-symbol-file ./minimemo.ko 0xffffffffc0000000
# ffffffffc0000000 t module_ioctl [minimemo]
# b *0xffffffffc0000000
b module_ioctl
gef
c

