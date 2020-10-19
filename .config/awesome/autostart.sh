#!/bin/bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

#if [ $(hostname) = "XMLaptop" ]; then
#	xrandr --output DP1 --primary --mode 1920x1200 \
#		--pos 0x0 --rotate normal --output eDP1 --off --output HDMI2 --auto
#fi

run "autorandr"
# --change"


#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
run "nm-applet"
#run "caffeine"
#run "pamac-tray"
run "variety"
#run "xfce4-power-manager"
#run "blueberry-tray"
run "blueman-tray"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
#run "$(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)"
#run "numlockx on"
#run "volumeicon"
#run "nitrogen --restore"
#run "conky -c $HOME/.config/awesome/system-overview"

#run applications from startup
#run "firefox"
#run "atom"
#run "dropbox"
#run "insync start"
#run "spotify"

#run "compton -b"
export DESKTOP_STARTUP_ID="awesome2312"
#run "ibus-daemon -drx"
run "fcitx5"
#run "nextcloud"
#if [ $(hostname) = "tramhao-pc" ]; then
if [ $(hostname) = "XMLaptop" ]; then
	run "nextcloud"
fi


