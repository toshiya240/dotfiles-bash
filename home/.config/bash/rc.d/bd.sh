package_root=$BASHER_PREFIX/packages/vigneshwaranr/bd

if [ -f $package_root/bash_completion.d/bd ]; then
    source $package_root/bash_completion.d/bd
fi

unset package_root
