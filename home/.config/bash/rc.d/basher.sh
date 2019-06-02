export BASHER_ROOT=$HOME/.homesick/repos/basher

if [ -d $BASHER_ROOT ]; then
    export PATH=$BASHER_ROOT/bin:$PATH
    eval "$(basher init -)"
fi
