#!/bin/bash
wallpaperdir="/home/tramhao/Pictures/wallpapers"


files=($wallpaperdir/*.jpg)
randompic=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`

feh --bg-fill $randompic
#gconftool-2 -t str --set /desktop/gnome/background/picture_filename "$randompic"
