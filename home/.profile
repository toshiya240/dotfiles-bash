export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}

#
# Temporary Files
#
if ! test -d "$TMPDIR"; then
    export TMPDIR="/tmp/$LOGNAME"
    mkdir -p -m 700 "$TMPDIR"
fi

if [ -d $XDG_CONFIG_HOME/bash/profile.d ]; then
    for f in $XDG_CONFIG_HOME/bash/profile.d/*.sh; do
        source $f
    done
fi
