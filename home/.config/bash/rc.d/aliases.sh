alias eng='LANG=C LANGUAGE=C LC_ALL=C'
if test $(uname) = 'Darwin'; then
    alias ls='ls -F -G'
else
    alias ls='ls -F --color=auto'
fi
alias ll='ls -l'
alias la='ls -a'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
