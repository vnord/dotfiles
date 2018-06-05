#!/bin/bash

THISHOST=$(hostname -s)

if [ "$THISHOST" = "eruditorum" ]
then
    setxkbmap -option alwtin:swap_alt_win
fi
