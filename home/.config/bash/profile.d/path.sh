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
