#!/bin/bash

musl-gcc -static -masm=intel -o exploit exploit.c

make -C experiment
cp experiment/main rootfs/main

cp exploit ./rootfs
cd rootfs && find . -print0 | cpio -o --format=newc --null > ../rootfs.cpio && cd ../


qemu-system-x86_64 \
    -m 256M \
    -kernel ./bzImage \
    -initrd ./rootfs.cpio \
    -append "root=/dev/ram rw console=ttyS0 oops=panic panic=1 nokaslr quiet" \
    -cpu kvm64,+smep,+smap \
    -monitor /dev/null \
    -nographic \
    -s -S
