#!/bin/bash

chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nLock\n" | rofi -dmenu -i -font "hack 30")
# chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nHibernate\nHybrid-sleep\nSuspend-then-hibernate" | rofi -dmenu -i)

if [[ $chosen = "Logout" ]]; then
    loginctl kill-session $XDG_SESSION_ID 
 # pkill leftwm
elif [[ $chosen = "Shutdown" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
elif [[ $chosen = "Suspend" ]]; then
	systemctl suspend
elif [[ $chosen = "Lock" ]]; then
    slock
elif [[ $chosen = "Hybrid-sleep" ]]; then
	systemctl hibernate
elif [[ $chosen = "Suspend-then-hibernate" ]]; then
	systemctl suspend-then-hibernate
fi
