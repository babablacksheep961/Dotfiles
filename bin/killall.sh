first=$(ps -A | awk '{print $4}' | rofi -dmenu -p "Who we killin this time ?")
killall $first
