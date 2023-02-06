#!/bin/sh

if [ $(uname -n) = "lenovo-t480" ]; then
  if [ `ifconfig wlan0 | awk '/inet /{ print $6;}'` = "192.168.186.255" ]; then
      # nextcloud --background --logfile ~/.cache/nextcloud.log --logdebug &
      sleep 2
#monitor = HDMI-A-2,preferred,0x0,1
      hyprctl keyword monitor HDMI-A-2, preferred,0x0,1 
      hyprctl keyword monitor eDP-1, preferred,1920x0,1 
      hyprctl keyword monitor eDP-1, transform,3 
      hyprctl keyword wsbind 1, HDMI-A-2
      hyprctl keyword wsbind 2, HDMI-A-2
      hyprctl keyword wsbind 3, HDMI-A-2
      hyprctl keyword wsbind 4, HDMI-A-2
      hyprctl keyword wsbind 5, HDMI-A-2
      hyprctl keyword wsbind 6, HDMI-A-2
      hyprctl keyword wsbind 7, eDP-1
  fi
fi

# monitor = eDP-1,preferred,1920x0,1
# monitor = eDP-1,transform,3
# #workspace = eDP-1,7
# wsbind = 1,HDMI-A-2
# wsbind = 2,HDMI-A-2
# wsbind = 3,HDMI-A-2
# wsbind = 4,HDMI-A-2
# wsbind = 5,HDMI-A-2
# wsbind = 6,HDMI-A-2
# wsbind = 7,eDP-1
# hyprctl keyword windowrule "workspace unset,Alacritty"
# hyprctl keyword windowrule "workspace unset,kitty"