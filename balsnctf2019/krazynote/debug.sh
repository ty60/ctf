#!/bin/bash

make
cp exploit initramfs/home/note

cd initramfs && find -print0 | cpio --null --format=newc -o | gzip -9 > ../initramfs.cpio.gz && cd ../

qemu-system-x86_64 \
    -m 128M \
    -nographic \
    -kernel ./bzImage \
    -append 'console=ttyS0 loglevel=3 oops=panic panic=1 nokaslr' \
    -monitor /dev/null \
    -initrd ./initramfs.cpio.gz  \
    -smp cores=2,threads=2 \
    -cpu kvm64,smep,smap \
    -s -S
