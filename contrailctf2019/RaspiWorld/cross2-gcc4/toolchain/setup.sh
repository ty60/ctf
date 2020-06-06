#!/bin/sh

cd ..
. ./config.sh
cd toolchain

orig_dir="orig"
patch_dir="../patch"

tar xvzf $orig_dir/$binutils.tar.gz
tar xvzf $orig_dir/$gcc.tar.gz
tar xvzf $orig_dir/$newlib.tar.gz
tar xvzf $orig_dir/$gdb.tar.gz

tar xvjf $orig_dir/$gmp.tar.bz2
tar xvzf $orig_dir/$mpfr.tar.gz
tar xvzf $orig_dir/$mpc.tar.gz

cd $binutils
patch -p0 < ../$patch_dir/patch-binutils-2.23.1-alpha.txt
#patch -p0 < ../$patch_dir/patch-binutils-2.21.1-alpha.txt
#patch -p0 < ../$patch_dir/patch-binutils-2.21.1-sed-am.txt
#patch -p0 < ../$patch_dir/patch-binutils-2.21.1-sed-in.txt
#patch -p0 < ../$patch_dir/patch-binutils-2.21.1-arm.txt
cd ..

cd $gcc
patch -p0 < ../$patch_dir/patch-gcc-4.7.2-alpha-gcc.txt
patch -p0 < ../$patch_dir/patch-gcc-4.7.2-alpha-libgcc.txt
#patch -p0 < ../$patch_dir/patch-gcc-3.4.6-alpha.txt
#patch -p0 < ../$patch_dir/patch-gcc-3.4.6-gcc4.txt
#patch -p0 < ../$patch_dir/patch-gcc-3.4.6-ia64.txt
#patch -p0 < ../$patch_dir/patch-gcc-3.4.6-newlib.txt
#patch -p0 < ../$patch_dir/patch-gcc-3.4.6-vax.txt
#patch -p0 < ../$patch_dir/patch-gcc-3.4.6-x64-h8300.txt
#patch -p0 < ../$patch_dir/patch-gcc-3.4.6-x64-m68k.txt
cd ..

cd $gdb
patch -p0 < ../$patch_dir/patch-gdb-7.5.1-log2.txt
#patch -p0 < ../$patch_dir/patch-gdb-7.3.1-centos.txt
#patch -p0 < ../$patch_dir/patch-gdb-7.3.1-mn10300.txt
cd ..
