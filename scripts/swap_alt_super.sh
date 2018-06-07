#!/bin/bash

THISHOST=$(hostname -s)

if [ "$THISHOST" = "eruditorum" ]
then
    setxkbmap -option altwin:swap_alt_win
fi
