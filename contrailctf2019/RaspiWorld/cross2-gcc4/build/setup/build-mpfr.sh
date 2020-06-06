#!/bin/sh

tool="gcc-lib"
operation="build"

no_exit=true
cd ..
. ./config.sh
cd setup

# common options.
opt="--prefix=$install_dir"
opt="$opt --with-gmp=$gmp_dir"
opt="$opt --disable-thread-safe"

mkdir -p mpfr
cd mpfr
../../$toolchain_dir/$mpfr/configure $opt
$make $makeopt
$make $makeopt check
cd ..
