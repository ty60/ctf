#!/bin/bash

make && cp exploit rootfs
cd rootfs && find . -print0 | cpio --null -o --format=newc > ../debug_rootfs.cpio && cd ../

qemu-system-x86_64 \
        -m 64M \
        -nographic \
        -kernel ./linux-5.14.3/arch/x86_64/boot/bzImage \
        -append "nokaslr console=ttyS0 loglevel=3 oops=panic panic=-1 pti=off" \
        -no-reboot \
        -smp 1 \
        -monitor /dev/null \
        -initrd debug_rootfs.cpio \
        -net nic \
        -net user \
        -s -S
