#!/bin/bash

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    printf '%b %-30s' '⮓' "$(playerctl metadata title) - $(playerctl metadata artist)" 
elif [ "$player_status" = "Paused" ]; then
    printf '%b %-30s' '⮔' "$(playerctl metadata title) - $(playerctl metadata artist)"
else
    echo "#3"
fi

wait
