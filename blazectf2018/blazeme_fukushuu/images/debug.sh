#!/bin/bash
if [[ ! -d ./mnt/bin ]]; then
    sudo mount -t ext2 rootfs.ext2 mnt
fi
musl-gcc -masm=intel -static -o exploit exploit.c
sudo cp exploit ./mnt/
/usr/bin/qemu-system-x86_64 -kernel bzImage -smp 1 -hda rootfs.ext2 -boot c -m 64M -append "root=/dev/sda nokaslr rw ip=10.0.2.15:10.0.2.2:10.0.2.2 console=tty1 console=ttyAMA0" -net nic,model=ne2k_pci -net user -nographic -s -S
