homeshick_root=$HOME/.homesick/repos/homeshick

if [ -f $homeshick_root/homeshick.sh ]; then
    source $homeshick_root/homeshick.sh
fi

if [ -f $homeshick_root/completions/homeshick-completion.bash ]; then
    source $homeshick_root/completions/homeshick-completion.bash
fi

unset homeshick_root
