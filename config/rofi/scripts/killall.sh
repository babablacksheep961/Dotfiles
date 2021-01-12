first=$(ps -eo command| rofi -dmenu -p "Kill:")
killall $first
