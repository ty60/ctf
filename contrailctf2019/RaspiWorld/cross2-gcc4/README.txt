Copyright (c) 2011-2013 SAKAI Hiroaki.
All Rights Reserved.

This environment is to enjoy assembler of various architectures,
and confirmed on FreeBSD, CentOS, Ubuntu, and Cygwin.

cross-gcc4  ... Without library. Cannot use standard C library functions.
cross2-gcc4 ... With newlib. You can use printf, but need disk space too much.

****************************************************************
* Setup building environment
****************************************************************

* Setup

  Download archive.

    ~>% wget -nd http://kozos.jp/books/asm/cross-gcc4-XXXXXXXX.tgz
    (or cross2-gcc4-XXXXXXXX.tgz)

  Extract building environment from archive.

    ~>% tar xvzf cross-gcc4-XXXXXXXX.tgz

    or

    ~>% unzip cross-gcc4-XXXXXXXX.zip

* Get archives of toolchain

    ~>% cd cross-gcc4/toolchain
    ~/cross-gcc4/toolchain>% ./fetch.sh
    (download archives and check MD5)

  Or get archives manually and put them in cross-gcc4/toolchain/orig.

  If archives already exist and you run fetch.sh, only check of MD5 is done.

* Setup toolchain

    ~/cross-gcc4/toolchain>% ./setup.sh
    (extract sources from archives and apply some patches)

* Setup build environment

  If your PC has multi-core processor, enable the following line of config.sh.

    ~/cross-gcc4/toolchain>% cd ..
    ~/cross-gcc4>% vi config.sh

  ----------------
  #makeopt="-j 2"
  ----------------

  Modify above line as follows to the number of cores.

  ----------------
  makeopt="-j 4"
  ----------------

****************************************************************
* Install libraries for GCC4
****************************************************************

* Check system

  Run script to check your system as follows.

    ~/cross-gcc4>% cd build
    ~/cross-gcc4/build>% ./config.sh

  GCC4 needs GMP, MPFR, and MPC libraries. If you cannot to
  detect them, the following operations is need to install them.

  If these libraries have been already installed in your system
  and were able to detect them by config.sh, you may use them.
  If you want to do so, following operations are not necessary.

  However, it is recommended to install these libraries independently
  from one of the system by following operations to avoid
  combination problems between them and GCC4.

  You can install them at once or by step.

* Install all at once

  To install all at once, open the directory to install toolchain.

    ~/cross-gcc4/build>% su
    # mkdir /usr/local/cross-gcc4 (or /usr/local/cross2-gcc4)
    # chmod 777 /usr/local/cross-gcc4
    # exit

  Install all at once as follows.

    ~/cross-gcc4/build>% ./setup-all.sh

* Install by step

  If you want not to open system directory to normal user,
  install them by step.

    ~/cross-gcc4/build>% cd setup
    ~/cross-gcc4/build/setup>% ./build-gmp.sh
    ~/cross-gcc4/build/setup>% su
    # ./install-gmp.sh
    # exit
    ~/cross-gcc4/build/setup>% ./build-mpfr.sh
    ~/cross-gcc4/build/setup>% su
    # ./install-mpfr.sh
    # exit
    ~/cross-gcc4/build/setup>% ./build-mpc.sh
    ~/cross-gcc4/build/setup>% su
    # ./install-mpc.sh
    # exit
    ~/cross-gcc4/build/setup>% cd ..

* Check build environment once again

  Check to detect installed libraries.

    ~/cross-gcc4/build>% ./config.sh

  GMP, MPFR, and MPC installed directories are /usr/local/cross-gcc4.

****************************************************************
* Install toolchain
****************************************************************

* Install all at once

  If /usr/local/cross-gcc4 is opened to normal user,
  you can build and install all at once as follows.

    ~/cross-gcc4/build>% ./build-install-all.sh
    (need a lot of space on HDD and long time)

  If you want to save the space of HDD,
  you can build while deleting the working directories as follows.

    ~/cross-gcc4/build>% ./build-install-clean-all.sh

  If you want to build only specific architectures, as follows.

    ~/cross-gcc4/build>% ./build-install-all.sh arm-elf mips-elf

  If you want to build only BINUTILS and specific architectures, as follows.

    ~/cross-gcc4/build>% cd binutils
    ~/cross-gcc4/build/binutils>% ./all.sh -build -install arm-elf mips-elf

* Install by step

    ~/cross-gcc4/build>% cd binutils
    ~/cross-gcc4/build/binutils>% ./build.sh
    ~/cross-gcc4/build/binutils>% su
    # ./install.sh
    # exit
    ~/cross-gcc4/build/binutils>% cd ../gcc
    ~/cross-gcc4/build/gcc>% ./build.sh
    ~/cross-gcc4/build/gcc>% su
    # ./install.sh
    # exit
    ~/cross-gcc4/build/gcc>% cd ../gdb
    ~/cross-gcc4/build/gdb>% ./build.sh
    ~/cross-gcc4/build/gdb>% su
    # ./install.sh
    # exit

  If you want to build or install only specific architectures,
  you can use script as follows.

    ~/cross-gcc4/build>% cd binutils
    ~/cross-gcc4/build/binutils>% ./build.sh arm-elf mips-elf

    or

    ~/cross-gcc4/build/binutils>% su
    # ./install.sh arm-elf mips-elf

****************************************************************
* Output assemblers
****************************************************************

* Output assemblers.

    ~>% cd cross-gcc4/sample (or cross2-gcc4/sample)
    ~/cross-gcc4/sample>% make clean
    ~/cross-gcc4/sample>% make

  See assemblers as follows.

    ~/cross-gcc4/sample>% ls *.d
    ~/cross-gcc4/sample>% more mips-elf.d

  If you want to output only specific architectures, as follows.

    ~/cross-gcc4/sample>% make mips-elf.d

* Execute sample program.

    ~/cross-gcc4/sample>% cd ../exec
    ~/cross-gcc4/exec>% make clean
    ~/cross-gcc4/exec>% make
    ~/cross-gcc4/exec>% make run
    ~/cross-gcc4/exec>% cat *.not *.sot

  If you want to execute only specific architectures, as follows.

    ~/cross-gcc4/exec>% make mips-elf.sot

* Execute sample program with newlib. (cross2-gcc4 only)

    ~/cross-gcc4/exec>% cd ../printf
    ~/cross-gcc4/printf>% make clean
    ~/cross-gcc4/printf>% make
    ~/cross-gcc4/printf>% make run
    ~/cross-gcc4/printf>% cat *.not *.sot

****************************************************************
* Clean working directories
****************************************************************

* Clean installed toolchain

    ~>% su
    # cd /usr/local
    # rm -fR cross-gcc4 (or cross2-gcc4)

* Clean source directory

    ~>% cd cross-gcc4/toolchain
    ~/cross-gcc4/toolchain>% ./clean.sh
    ~/cross-gcc4/toolchain>% cd orig
    ~/cross-gcc4/toolchain/orig>% rm -f *

* Clean build directory

    ~>% cd cross-gcc4/build
    ~/cross-gcc4/build>% ./clean-all.sh

  If you want to delete only specific architectures, as follows.

    ~/cross-gcc4/build>% ./clean-all.sh arm-elf mips-elf

  If you want to delete only BINUTILS and specific architectures, as follows.

    ~/cross-gcc4/build>% cd binutils
    ~/cross-gcc4/build/binutils>% ./clean.sh arm-elf mips-elf

  If you want to delete only BINUTILS, as follows.

    ~/cross-gcc4/build/binutils>% ./clean.sh

Let's enjoy assembler!
