#!/bin/zsh

if [ -z $@ ]
then
    ls ~/config/ | tr ' ' '\n' | sort -n

else
    konsole -e "nvim  /home/pacifist/config/$@" >/dev/null &
    killall rofi
fi
