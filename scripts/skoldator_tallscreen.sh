#!/bin/bash

xrandr --output DP1 --auto
xrandr --output eDP1 --off
xrandr --output DP1 --rotate left
feh --bg-fill ~/.dotfiles/bg.jpg
