arguments()
{
    for arg in $1; do
        case $arg in
        -build)      do_build=true    ;;
        -install)    do_install=true  ;;
        -clean)      do_clean=true    ;;
        -no-build)   do_build=false   ;;
        -no-install) do_install=false ;;
        -no-clean)   do_clean=false   ;;
        *) enables="$enables $arg" ;;
        esac
    done
}

pickup()
{
    _return=""
    for target in $1; do
        for enable in $2; do
            if [ $target = $enable ]; then
                _return="$_return $target"
            fi
        done
    done
}
