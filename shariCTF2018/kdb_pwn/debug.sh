#!/bin/bash

if [[ -e ./exploit.c ]]; then
    musl-gcc -masm=intel -static -o exploit exploit.c
    cp ./exploit ./rootfs
fi

cd rootfs && find . -print0 | cpio --null -o --format=newc > ../rootfs.cpio && cd ../

qemu-system-x86_64 -cpu kvm64,+smep -m 64M -kernel ./bzImage -initrd ./rootfs.cpio -append "root=/dev/ram rw console=ttyS0 oops=panic panic=1 quiet nokaslr" -smp cores=2,threads=1,sockets=1  -nographic -s -S -monitor telnet::1235,server,nowait
