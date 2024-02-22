#!/bin/sh



if sudo true; then
  IFS=$'\n'
  mapfile -t DEVICES < <(~/.config/hypr/fix_touchpad_inner.sh)
  for i in "${DEVICES[@]}"
  do
    res=$(sudo hid-feature list $i | grep Inputmode | cut -d "|" -f 1 | awk '{$1=$1};1')
    if [ "$res" == "30000" ]; then
      sudo hid-feature set -f 30000 3 $i
    fi
  done
  unset IFS
fi
