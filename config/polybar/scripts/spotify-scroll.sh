#!/bin/bash
zscroll -l 30 \
	-p " :: " \
        --delay 0.1 \
        --match-command "playerctl --player=playerctld status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true '/home/soma/.config/polybar/scripts/spotify-status.sh' &

wait
