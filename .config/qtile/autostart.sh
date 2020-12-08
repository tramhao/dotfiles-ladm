#!/usr/bin/env bash

## run (only once) processes which spawn with the same name
function run {
   if (command -v $1 && ! pgrep $1); then
     $@&
   fi
}

## run (only once) processes which spawn with different name
if (command -v gnome-keyring-daemon && ! pgrep gnome-keyring-d); then
    gnome-keyring-daemon --daemonize --login &
fi
if (command -v start-pulseaudio-x11 && ! pgrep pulseaudio); then
    start-pulseaudio-x11 &
fi
if (command -v /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 && ! pgrep polkit-gnome-au) ; then
    /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
fi
#if (command -v  xfce4-power-manager && ! pgrep xfce4-power-man) ; then
#    xfce4-power-manager &
#fi

#if [ $(hostname) = "XMLaptop" ]; then
#	xrandr --output DP1 --primary --mode 1920x1200 \
#		--pos 0x0 --rotate normal --output eDP1 --off --output HDMI2 --auto
#fi


#run "pamac-tray"
run variety
run nm-applet
run blueman-tray
run volumeicon
run cbatticon
#run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
#run "$(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)"
#run "conky -c $HOME/.config/awesome/system-overview"
#run applications from startup
#run "firefox"
#run "atom"
#run "dropbox"
#run "insync start"
#run "spotify"

#run "compton -b"
#export DESKTOP_STARTUP_ID="awesome2312"
#run "ibus-daemon -drx"
run fcitx5
#run "nextcloud"
#if [ $(hostname) = "tramhao-pc" ]; then
if [ $(hostname) = "XMLaptop" ]; then
	run nextcloud
	[ -n "$(xrandr | grep 'DP1 connected')" ] && \
#		echo "hello"
		xrandr --output DP1 --primary --mode 1920x1200 \
		--pos 0x0 --rotate normal --output eDP1 --off --output HDMI2 --auto
	#run autorandr --change
fi
#run compton -b --config $HOME/.config/awesome/compton.conf
run picom
