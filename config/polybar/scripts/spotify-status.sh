#!/bin/bash

yt=$(pgrep -f "polybar -r yt")
spotify=$(pgrep -f "polybar -r spotify")

if [[ $(playerctl status 2>&1) = "No players found" ]]; then
  polybar-msg -p $yt cmd hide &> /dev/null
  polybar-msg -p $spotify cmd hide &> /dev/null

else
  CURPLAYER=$(playerctl metadata --format '{{playerName}}')

  if [[ $CURPLAYER = "firefox" ]]; then
    polybar-msg -p $yt cmd show &> /dev/null
    polybar-msg -p $spotify cmd hide &> /dev/null
  elif [[ $CURPLAYER = "spotify" ]]; then
    polybar-msg -p $yt cmd hide &> /dev/null
    polybar-msg -p $spotify cmd show &> /dev/null
  fi

  playerctl --player=playerctld metadata --format "{{ title }} | {{ artist }}"
fi

