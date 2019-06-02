export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}

if [ -d $XDG_CONFIG_HOME/bash/rc.d ]; then
    for f in $XDG_CONFIG_HOME/bash/rc.d/*.sh; do
        source $f
    done
fi
