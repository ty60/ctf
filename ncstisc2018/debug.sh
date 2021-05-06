#!/bin/bash


musl-gcc -static -masm=intel -o exploit exploit.c
cp exploit rootfs
cd rootfs && find . -print0 | cpio -o --null --format=newc | gzip -9 > ../rootfs.cpio && cd ../

# qemu-system-x86_64 -initrd rootfs.cpio -kernel bzImage -append 'nokaslr console=ttyS0 root=/dev/ram oops=panic panic=1' -enable-kvm  -m 64M --nographic  -smp cores=1,threads=1 -cpu kvm64,+smep -s -S
qemu-system-x86_64 -initrd rootfs.cpio -kernel bzImage -append 'nokaslr console=ttyS0 root=/dev/ram oops=panic panic=1' -enable-kvm  -m 64M --nographic  -smp cores=1,threads=1 -cpu kvm64,+smep -s -S
