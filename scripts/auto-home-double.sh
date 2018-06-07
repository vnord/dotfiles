#!/bin/bash

THISHOST=$(hostname -s)

if [ "$THISHOST" = "eruditorum" ]
then
    xrandr --output DP-1 --auto
    xrandr --output DP-1 --primary
    xrandr --output DVI-D-0 --auto
    xrandr --output DVI-D-0 --right-of DP-1
    sh $HOME/.dotfiles/scripts/bg_set.sh
fi
