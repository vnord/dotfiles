#!/bin/bash

xrandr --output DP1 --auto
# xrandr --output eDP1 --off
xrandr --output eDP1 --auto
xrandr --output DP1 --rotate normal
xrandr --output eDP1 --below DP1
sh $HOME/.dotfiles/scripts/bg_set.sh
