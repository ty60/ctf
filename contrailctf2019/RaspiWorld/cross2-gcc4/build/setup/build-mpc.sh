#!/bin/sh

tool="gcc-lib"
operation="build"

no_exit=true
cd ..
. ./config.sh
cd setup

# common options.
opt="--prefix=$install_dir"
opt="$opt --with-gmp=$gmp_dir --with-mpfr=$mpfr_dir"

mkdir -p mpc
cd mpc
../../$toolchain_dir/$mpc/configure $opt
$make $makeopt
$make $makeopt check
cd ..
