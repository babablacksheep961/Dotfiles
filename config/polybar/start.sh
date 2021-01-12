#!/usr/bin/env sh

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar -r bspwm &
polybar -r info &
polybar -r system &
polybar -r yt &
polybar -r spotify &
