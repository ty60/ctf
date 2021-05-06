#!/bin/bash


musl-gcc -static -masm=intel -o exploit exploit.c
# gcc -pthread -static -masm=intel -o ans ans.c
cp exploit ./rootfs
# cp ans ./rootfs
cd rootfs && find . -print0 | cpio --null -o --format=newc > ../rootfs.cpio && cd ../


qemu-system-x86_64 -enable-kvm -cpu kvm64,+smep -kernel ./bzImage -append "nokaslr console=ttyS0 root=/dev/ram rw oops=panic panic=1 quiet" -initrd ./rootfs.cpio -nographic -m 2G -smp cores=2,threads=2,sockets=1 -nographic -s -S
