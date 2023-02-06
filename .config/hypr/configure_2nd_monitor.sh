#!/bin/sh

if [ $(uname -n) = "lenovo-t480" ]; then
  if [ `ifconfig wlan0 | awk '/inet /{ print $6;}'` = "192.168.186.255" ]; then
      sleep 2
      hyprctl --batch "keyword monitor HDMI-A-2, preferred,0x0,1; \ 
      keyword monitor eDP-1, preferred,1920x0,1; \
      keyword monitor eDP-1, transform,3; \
      keyword wsbind 1, HDMI-A-2; \
      keyword wsbind 2, HDMI-A-2; \
      keyword wsbind 3, HDMI-A-2; \
      keyword wsbind 4, HDMI-A-2; \
      keyword wsbind 5, HDMI-A-2; \
      keyword wsbind 6, HDMI-A-2; \
      keyword wsbind 7, eDP-1"
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
