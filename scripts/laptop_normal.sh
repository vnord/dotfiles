#!/bin/bash

xrandr --output eDP1 --auto
xrandr --output DP1 --off
sh $HOME/.dotfiles/scripts/bg_set.sh
