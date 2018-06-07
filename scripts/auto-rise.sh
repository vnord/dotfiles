#!/bin/bash

xrandr --properties | grep "DP1 connected 2560"

if [ $? -eq 0 ]
then
    echo "setting main screen automatically"
    sh ~/.dotfiles/scripts/rise-normal.sh
fi
