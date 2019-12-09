# qemu
```
qemu-system-x86_64 -enable-kvm -cpu kvm64,+smep -m 64M -kernel ./bzImage -initrd ./rootfs.cpio -append "root=/dev/ram rw console=ttyS0 oops=panic panic=1 quiet kaslr" -smp cores=2,threads=1,sockets=1 -monitor /dev/null -nographic 2>/dev/null
```
- `-enable -kvm -cpu kvm64`
    - kvm 使いますよ
- `-append ...`
    - Linux kernel command line を指定できる
    - `root` : ルートファイルシステムとして利用されるデバイスを指定

## refs
- [man qemu-system-x86_64](https://manpages.debian.org/testing/qemu-system-x86/qemu-system-x86_64.1.en.html)
- [kernel's command line](https://www.kernel.org/doc/html/v4.15/admin-guide/kernel-parameters.html)
- [bootparam](http://manpages.ubuntu.com/manpages/bionic/ja/man7/bootparam.7.html)
- [ちょっとしたオプションまとめ](http://kawa0810.hateblo.jp/entry/2014/05/29/004717)
- [kvm&smp](https://amaya382.hatenablog.jp/entry/2018/03/06/192058)
- [smp wiki](https://ja.wikipedia.org/wiki/%E5%AF%BE%E7%A7%B0%E5%9E%8B%E3%83%9E%E3%83%AB%E3%83%81%E3%83%97%E3%83%AD%E3%82%BB%E3%83%83%E3%82%B7%E3%83%B3%E3%82%B0)
