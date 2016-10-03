#!/bin/bash
layouts=(fr ru us)
current_layout=$(~/.config/i3/tools/xkblayout-state/xkblayout-state print %s | awk '{print $0}')
layout_to_set="fr"
if [ "$current_layout" == "fr" ]; then
    layout_to_set="ru"
elif [ "$current_layout" == "ru" ]; then
    layout_to_set="us"
elif [ "$current_layout" == "us" ]; then
    layout_to_set="fr"
fi
echo $layout_to_set
setxkbmap -model pc105 -layout $layout_to_set
pkill -RTMIN+1 i3blocks