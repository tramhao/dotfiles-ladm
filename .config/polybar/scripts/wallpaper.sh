#!/usr/bin/env bash
wallpaperdir=$HOME/Pictures/wallpapers


#files=($wallpaperdir/*.jpg)
#randompic=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`

randompic=$(find $wallpaperdir -type f -iname "*.jpg" -print0 | shuf -z -n 1)

feh --bg-fill $randompic
#gconftool-2 -t str --set /desktop/gnome/background/picture_filename "$randompic"
