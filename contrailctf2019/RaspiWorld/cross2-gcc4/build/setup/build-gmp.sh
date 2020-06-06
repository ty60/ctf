#!/bin/sh

tool="gcc-lib"
operation="build"

no_exit=true
cd ..
. ./config.sh
cd setup

# common options.
opt="--prefix=$install_dir"
#opt="$opt --enable-cxx"

mkdir -p gmp
cd gmp
../../$toolchain_dir/$gmp/configure $opt
$make $makeopt
$make $makeopt check
cd ..
