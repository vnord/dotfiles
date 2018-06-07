#!/bin/bash

xrandr --output DP1 --auto
xrandr --output DP1 --primary
xrandr --output DVI-D-0 --auto
xrandr --output DVI-D-0 --right-of-DP1
sh $HOME/.dotfiles/scripts/bg_set.sh
