#!/bin/sh

toolchain_dir="../toolchain"

cd ..
. ./config.sh
cd build

if [ ! $tool ]; then
    tool="unspecified"
fi

if [ ! $operation ]; then
    operation="check"
fi

plathome=`uname -s | sed 's/[\_\-].*//'`

# Search GNU make. (GNU make installed as gmake on FreeBSD)
gmake=`which gmake`
if [ $gmake ]; then
    make=$gmake
else
    make=`which make`
    if [ ! $make ]; then
        echo GNU make not found. Install it.
        exit 1
    fi
    ver=`$make -q -v | head -1 | awk '{ print $1$2; }'`
    if [ ! $ver ]; then
        echo $make found, but not GNU make. Install it.
        exit 1
    fi
    if [ $ver != GNUMake ]; then
        echo $make found, but not GNU make version. Install it.
        exit 1
    fi
fi

# Need environment variable SHELL and PATH to build and install gcc.
if [ "$set_shell" = true ]; then
    SHELL=`which bash`
    export SHELL
    if [ ! $SHELL ]; then
        echo Cannot find GNU bash. Install it.
        exit 1
    fi
    PATH=$PATH:$install_dir/bin
    export PATH
fi

# Search gmp, mpfr, and mpc to build gcc.
lib_dirlist="/usr /usr/local $install_dir"
for dir in $lib_dirlist; do
    if [ -d $dir/lib ]; then
        f=`find $dir/lib -maxdepth 1 -name "libgmp.*"`
        if [ ! -z "$f" ]; then
            gmp_dir=$dir
        fi
        f=`find $dir/lib -maxdepth 1 -name "libmpfr.*"`
        if [ ! -z "$f" ]; then
            mpfr_dir=$dir
        fi
        f=`find $dir/lib -maxdepth 1 -name "libmpc.*"`
        if [ ! -z "$f" ]; then
            mpc_dir=$dir
        fi
    fi
done
if [ ! "$no_exit" = true ]; then
    if [ ! $gmp_dir ]; then
        echo Cannot find gmp library.
        exit 1
    fi
    if [ ! $mpfr_dir ]; then
        echo Cannot find mpfr library.
        exit 1
    fi
    if [ ! $mpc_dir ]; then
        echo Cannot find mpc library.
        exit 1
    fi
fi

echo -------- configuration parameters --------
echo "tool        =" $tool
echo "operation   =" $operation
echo "plathome    =" $plathome
echo "install_dir =" $install_dir
echo "binutils    =" $binutils
echo "gcc         =" $gcc
echo "newlib      =" $newlib
echo "gdb         =" $gdb
echo "gmp         =" $gmp
echo "mpfr        =" $mpfr
echo "mpc         =" $mpc
echo "make        =" $make
echo "gmp_dir     =" $gmp_dir
echo "mpfr_dir    =" $mpfr_dir
echo "mpc_dir     =" $mpc_dir
echo "SHELL       =" $SHELL
echo "PATH        =" $PATH
echo --------
