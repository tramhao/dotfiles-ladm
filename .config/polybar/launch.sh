#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
# Bar is the name set in the polybar config, so if you change it, you have to change it here too.
#polybar bar

#if type "xrandr"; then
#	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
if [ $(hostname) = "tramhao-pc" ]; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
		MONITOR=$m polybar mainbar-bspwm-home  >> ~/.config/polybar/mainbar-bspwm-home-$m.log 2>&1 & disown
	done
elif [ $(hostname) = "XMLaptop" ]; then
	if type "xrandr"; then
	  for m in $(polybar --list-monitors | cut -d":" -f1); do
			MONITOR=$m polybar --reload mainbar-bspwm-office > /dev/null 2> ~/.config/polybar/mainbar-bspwm-office-$m.log &
		done
	else
		polybar --reload mainbar-bspwm-office &
	fi
else
  polybar --reload mainbar-bspwm-office &
fi

#else
#	polybar --reload mainbar-bspwm &
#fi

echo "Bars launched..."
