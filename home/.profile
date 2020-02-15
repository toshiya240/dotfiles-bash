export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}

#
# Editors
#
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#
# Language
#
if test -z "$LANG"; then
    export LANG='ja_JP.UTF-8'
fi

#
# Paths
#
for i in \
        /usr/local/{bin,sbin} \
        /usr/local/share/npm/bin \
        $HOME/.cargo/bin \
        $HOME/bin; do
    if [ -d $i ]; then
        export PATH=$PATH:$i
    fi
done

#
# Temporary Files
#
if ! test -d "$TMPDIR"; then
    export TMPDIR="/tmp/$LOGNAME"
    mkdir -p -m 700 "$TMPDIR"
fi

#
# source profile.d
#
if [ -d $XDG_CONFIG_HOME/bash/profile.d ]; then
    for f in $XDG_CONFIG_HOME/bash/profile.d/*.sh; do
        source $f
    done
fi
