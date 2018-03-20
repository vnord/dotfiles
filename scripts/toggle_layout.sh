#!/bin/bash

# This script toggles between us and se keyboard layouts 

KBMAP="$(setxkbmap -query | grep layout | cut -c 13-14)"

if [ "$KBMAP" = "se" ]
then
    setxkbmap us 
    echo setting kbmap to us
else
    setxkbmap se
    echo setting kbmap to se
fi
