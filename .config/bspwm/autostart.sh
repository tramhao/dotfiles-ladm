#!/bin/bash

function run {
  if (command -v $1 && ! pgrep $1); then
    $@&
  fi
}

#if [ $(hostname) = "XMLaptop" ]; then
#	xrandr --output DP1 --primary --mode 1920x1200 \
#		--pos 0x0 --rotate normal --output eDP1 --off --output HDMI2 --auto
#fi

#xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal

#run "autorandr --change"

run "sxhkd"

#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#run "caffeine"
#run "pamac-tray"
run feh --bg-fill $HOME/.scripts/pix/wall2.jpg
#run "xfce4-power-manager"
#run "blueberry-tray"
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)
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

# run compton -b --config $HOME/.config/awesome/compton.conf
#export DESKTOP_STARTUP_ID="bspwm2323"
#run "ibus-daemon -drx"
run fcitx5
#run "nextcloud"
#if [ $(hostname) = "tramhao-pc" ]; then
if [ $(hostname) = "XMLaptop" ]; then
  if [ `ifconfig wlp2s0 | awk '/inet /{ print $6;}'` = "192.168.186.255" ]; then
      # echo "ok"
      source ~/.xrandr
      run nextcloud --background
  fi
fi


# run nm-applet
#run variety
# if [ $(hostname) = "XMLaptop" ]; then
# 	run $HOME/sources/verysync-linux-amd64-v1.3.1/verysync
# fi
run picom -b -f
