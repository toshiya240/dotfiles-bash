function __last_status_color() {
    if [ $? -eq 0 ]; then
        printf "\e[32m"
    else
        printf "\e[31m"
    fi
}

PS1="\n\[\e[33m\][\D{%Y-%m-%d} \t] \$(__last_status_color)\w\n\[\e[0m\]\$ "
