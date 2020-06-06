#!/bin/sh

cd binutils
./all.sh -build -install -clean $*
cd ..

cd gcc
./all.sh -build -install -clean $*
cd ..

cd gdb
./all.sh -build -install -clean $*
cd ..
