#!/bin/bash

if pgrep -x "picom" > /dev/null 2>&1 
then 
	killall -q picom
#	xdo above -t "$(xdo id -N Bspwm -n root | sort | head -n 1)" $(xdo id -n tint2)
	bspc wm -r
else
#	xdo above -t "$(xdo id -N Bspwm -n root | sort | head -n 1)" $(xdo id -n tint2)
	picom --experimental-backends &		
	bspc wm -r
fi
