#!/bin/bash

CURRENT_SINK=$(pacmd stat | grep "Default sink name" | sed 's/.*: *//')
# speaker=
# headphone=

#echo $CURRENT_SINK

	if [ "$CURRENT_SINK" == "alsa_output.usb-Conexant_CONEXANT_USB_AUDIO_000000000000-00.analog-stereo" ]
	then
		pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo
		notify-send -t 2500 "Audio 2 Speaker" --icon="~/.icons/speaker.png"
		source ~/bin/set_border
		# echo $speaker 
		# bspc config focused_border_color '#80c484'
	else
		pactl set-default-sink alsa_output.usb-Conexant_CONEXANT_USB_AUDIO_000000000000-00.analog-stereo
		notify-send -t 2500 "Audio 2 Headphones" --icon="~/.icons/headphones-solid.png"
		source ~/bin/set_border
		# echo $headphone
		# bspc config focused_border_color '#8284cf'
	fi

# pkill -RTMIN+8 waybar
# if pgrep -f "python3 bin/pulse-volume-watcher.py" > /dev/null
# then
# 		pkill -f "python3 bin/pulse-volume-watcher.py"
# fi

# nohup bash -c 'bin/pulse-volume-watcher.py | xob' &> /dev/null &
