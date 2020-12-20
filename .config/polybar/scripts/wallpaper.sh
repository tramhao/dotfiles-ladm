#!/usr/bin/env bash
wallpaperdir=$HOME/Pictures/wallpapers


#files=($wallpaperdir/*.jpg)
#randompic=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`

randompic=$(find $wallpaperdir -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) -print0 | shuf -z -n 1 | tr '\0' '\n')
#randompic=$(find $wallpaperdir -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) -print0 | shuf -z -n 1)

feh --bg-fill "$randompic"
echo "  "
#gconftool-2 -t str --set /desktop/gnome/background/picture_filename "$randompic"
