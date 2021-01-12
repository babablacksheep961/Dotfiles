#!/bin/zsh
selection=$(ls $DOT_DIR/ | tr ' ' '\n' | sort -n | rofi -dmenu -p "Config:")
alacritty --class=float -e nvim $DOT_DIR/$selection >/dev/null &
