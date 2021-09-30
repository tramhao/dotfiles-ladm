#!/bin/bash

function run {
  if (command -v $1 && ! pgrep $1); then
    $@&
  fi
}

if [ $(hostname) = "XMLaptop" ]; then
  if [ `ifconfig wlp2s0 | awk '/inet /{ print $6;}'` = "192.168.186.255" ]; then
      # source ~/.xrandr
      run nextcloud --background
  fi
fi

# run remaps
# run xrdb ${XDG_CONFIG_HOME:-$HOME/.config}/x11/xresources # Uncomment to use Xresources colors/settings on startup

# run picom -f -b --experimental-backends
# run dunst			# dunst for notifications
# run xset r rate 400 50 # Speed xrate up
# run unclutter		# Rmove mouse when idle
run fcitx5
# run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
# run eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)
run setbg ~/Pictures/wallpapers