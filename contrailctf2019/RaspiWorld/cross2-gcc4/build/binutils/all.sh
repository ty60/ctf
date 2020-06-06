#!/bin/sh

tool="binutils"

. ./targets.sh
. ../subr.sh

arguments "$*"

if [ ! -z "$enables" ]; then
    pickup "$targets" "$enables"
    targets="$_return"
fi

cd ..
. ./config.sh
cd $tool

opt="--prefix=$install_dir --disable-werror --disable-nls"

for target in $targets; do
    t=`echo $target | tr - _`
    opt_add=`eval echo '$opt_'$t`
    option="$opt $opt_add"

    if [ "$do_build" = true ]; then
        mkdir -p $target
        cd $target
        ../../$toolchain_dir/$binutils/configure --target=$target $option
        $make $makeopt
        cd ..
    fi
    if [ "$do_install" = true ]; then
        if [ -d $target ]; then
            cd $target
            $make install
            cd ..
        fi
    fi
    if [ "$do_clean" = true ]; then
        rm -fR $target
    fi
done
