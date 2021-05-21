#!/bin/bash


if pgrep -x "picom" > /dev/null 2>&1 
then 
	killall -q picom
  notify-send "Picom Deactivated"
else
	picom --experimental-backends &		
  notify-send "Picom Activated" 
fi
