#!/bin/bash
rofi -show p -modi p:rofi-power-menu \
  -theme Arc-Dark \
  -font "JetBrains Mono Nerd Font 30" \
  -width 20 \
  -lines 6
# chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nLock\n" | rofi -dmenu -i -font "hack 30")
# # chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nHibernate\nHybrid-sleep\nSuspend-then-hibernate" | rofi -dmenu -i)

# if [[ $chosen = "Logout" ]]; then
#     exec loginctl kill-session $XDG_SESSION_ID 
# # pkill leftwm
# elif [[ $chosen = "Shutdown" ]]; then
# 	exec systemctl poweroff
# elif [[ $chosen = "Reboot" ]]; then
# 	exec systemctl reboot
# elif [[ $chosen = "Suspend" ]]; then
# 	exec systemctl suspend
# elif [[ $chosen = "Lock" ]]; then
#     exec slock
# elif [[ $chosen = "Hybrid-sleep" ]]; then
# 	exec systemctl hibernate
# elif [[ $chosen = "Suspend-then-hibernate" ]]; then
# 	exec systemctl suspend-then-hibernate
# fi
