#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
# Bar is the name set in the polybar config, so if you change it, you have to change it here too.
#polybar bar

if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar --reload mainbar-bspwm &
	done
else
	polybar --reload mainbar-bspwm &
fi

echo "Bars launched..."
