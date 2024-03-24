#!/bin/sh

if [ $(uname -n) = "lenovo-t480" ]; then
  if [ `ifconfig wlan0 | awk '/inet /{ print $6;}'` = "192.168.105.255" ]; then
      sleep 2
      # command="keyword monitor HDMI-A-2, preferred,0x0,1;\  
      # keyword wsbind 1, HDMI-A-2;\
      # keyword wsbind 2, HDMI-A-2;\
      # keyword wsbind 3, HDMI-A-2;\
      # keyword wsbind 4, HDMI-A-2;\
      # keyword wsbind 5, HDMI-A-2;\
      # keyword wsbind 6, HDMI-A-2;\
      # keyword monitor eDP-1, preferred,1920x0,1;\
      # keyword monitor eDP-1, transform,3;\
      # keyword wsbind 7, eDP-1"
      # hyprctl --batch "$command"
      hyprctl keyword monitor HDMI-A-2, preferred,0x0,1  
      hyprctl keyword wsbind 1, HDMI-A-2
      hyprctl keyword wsbind 2, HDMI-A-2
      hyprctl keyword wsbind 3, HDMI-A-2
      hyprctl keyword wsbind 4, HDMI-A-2
      hyprctl keyword wsbind 5, HDMI-A-2
      hyprctl keyword wsbind 6, HDMI-A-2
      hyprctl keyword monitor eDP-1, preferred,1920x0,1
      # hyprctl keyword monitor eDP-1, transform,3
      hyprctl keyword wsbind 7, eDP-1
  fi
fi

if [ $(uname -n) = "archMB14" ]; then
  if [ `ifconfig wlan0 | awk '/inet /{ print $6;}'` = "192.168.30.255" ]; then
      sleep 2
      # command="keyword monitor HDMI-A-2, preferred,0x0,1;\  
      # keyword wsbind 1, HDMI-A-2;\
      # keyword wsbind 2, HDMI-A-2;\
      # keyword wsbind 3, HDMI-A-2;\
      # keyword wsbind 4, HDMI-A-2;\
      # keyword wsbind 5, HDMI-A-2;\
      # keyword wsbind 6, HDMI-A-2;\
      # keyword monitor eDP-1, preferred,1920x0,1;\
      # keyword monitor eDP-1, transform,3;\
      # keyword wsbind 7, eDP-1"
      # hyprctl --batch "$command"
      hyprctl keyword monitor HDMI-A-1, preferred,0x0,1  
      hyprctl keyword wsbind 1, HDMI-A-1
      hyprctl keyword wsbind 2, HDMI-A-1
      hyprctl keyword wsbind 3, HDMI-A-1
      hyprctl keyword wsbind 4, HDMI-A-1
      hyprctl keyword wsbind 5, HDMI-A-1
      hyprctl keyword wsbind 6, HDMI-A-1
      hyprctl keyword monitor eDP-1, preferred,1920x0,1.6
      # hyprctl keyword monitor eDP-1, transform,3
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
