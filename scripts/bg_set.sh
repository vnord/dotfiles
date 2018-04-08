#!/bin/bash

# This is a script for setting the desktop background, but
# backing the current one up first.

WALLPAPER_DIR="$HOME/.dotfiles/wallpapers"
OLD_BG_FILENAME="$(basename $HOME/.dotfiles/wallpapers/bg.*)"
OLD_BG_EXTENSION="${OLD_BG_FILENAME##*.}"

echo old filename: $OLD_BG_FILENAME
echo $WALLPAPER_DIR
echo $OLD_BG_EXTENSION

if [ $# -eq 0 ]
then
    echo setting default background
    feh --bg-fill $WALLPAPER_DIR/bg.*
elif [ $# -eq 1 ]
then
    echo setting custom bg
    echo backing up the old bg
    mv $WALLPAPER_DIR/$OLD_BG_FILENAME \
        $WALLPAPER_DIR/$RANDOM-backup.$OLD_BG_EXTENSION
    echo copying the new background to the right place
    NEW_BG_FILENAME="$1"
    NEW_BG_EXTENSION="${NEW_BG_FILENAME##*.}"
    cp $NEW_BG_FILENAME $WALLPAPER_DIR/bg.$NEW_BG_EXTENSION
    feh --bg-fill $WALLPAPER_DIR/bg.$NEW_BG_EXTENSION
fi
