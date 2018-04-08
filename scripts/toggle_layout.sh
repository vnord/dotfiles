#!/bin/bash

# This script toggles between us and se keyboard layouts 

KBMAP="$(setxkbmap -query | grep layout | cut -c 13-14)"

if [ "$KBMAP" = "se" ]
then
    setxkbmap us 
    setxkbmap -option caps:escape # swap caps and escape
    echo setting kbmap to us
else
    setxkbmap se
    setxkbmap -option caps:escape # swap caps and escape
    echo setting kbmap to se
fi
