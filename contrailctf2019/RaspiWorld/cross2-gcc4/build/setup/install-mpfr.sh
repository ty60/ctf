#!/bin/sh

tool="gcc-lib"
operation="install"

no_exit=true
cd ..
. ./config.sh
cd setup

cd mpfr
$make install
cd ..
