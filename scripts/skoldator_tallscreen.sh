#!/bin/bash

xrandr --output DP1 --auto
xrandr --output eDP1 --off
xrandr --output DP1 --rotate left
sh $HOME/.dotfiles/scripts/bg_set.sh
