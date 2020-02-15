if [ -d $XDG_CONFIG_HOME/bash/rc.d ]; then
    for f in $XDG_CONFIG_HOME/bash/rc.d/*.sh; do
        source $f
    done
fi
