#!/bin/bash

make
cp ./exploit rootfs/
cd rootfs && find . -print0 | cpio -o --null --format=newc > ../rootfs.cpio && cd ../

qemu-system-x86_64 \
    -m 512M \
    -kernel ./bzImage \
    -initrd ./rootfs.cpio \
    -append "root=/dev/ram rw console=ttyS0 oops=panic panic=1 nokaslr quiet" \
    -cpu kvm64,+smep \
    -net user -net nic -device e1000 \
    -monitor /dev/null \
    -nographic \
    -s -S
