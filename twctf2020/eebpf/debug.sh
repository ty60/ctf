#!/bin/bash

# gcc -DDEBUG -static -o solve solve.c && cp solve rootfs
gcc -static -o solve solve.c && cp solve rootfs

cd rootfs && find . -print0 | cpio -o --null --format=newc > ../rootfs.cpio && cd ..

# qemu-system-x86_64 -kernel ./buildroot-2020.08-rc3/output/build/linux-5.4.58/arch/x86/boot/bzImage -initrd rootfs.cpio -append "nokaslr loglevel=3 root=/dev/ram console=ttyS0 oops=panic panic=1" -nographic -net user -net nic -device e1000 -smp cores=1,threads=1 -s -S
qemu-system-x86_64 -kernel ./buildroot-2020.08-rc3/output/build/linux-5.4.58/arch/x86/boot/bzImage -initrd rootfs.cpio -append "kaslr loglevel=3 root=/dev/ram console=ttyS0 oops=panic panic=1" -nographic -net user -net nic -device e1000 -smp cores=1,threads=1
# qemu-system-x86_64 -kernel ./bzImage -initrd rootfs.cpio -append "nokaslr loglevel=3 root=/dev/ram console=ttyS0 oops=panic panic=1" -nographic -net user -net nic -device e1000 -smp cores=1,threads=1 -s -S
