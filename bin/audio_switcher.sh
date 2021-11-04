#!/bin/bash

CURRENT_SINK=$(pacmd stat | grep "Default sink name" | sed 's/.*: *//')

#echo $CURRENT_SINK

	if [ "$CURRENT_SINK" == "alsa_output.usb-Conexant_CONEXANT_USB_AUDIO_000000000000-00.analog-stereo" ]
	then
		pactl set-default-sink 2
		notify.sh "Audio 2" "Speakers" "" 2 update
	else
		pactl set-default-sink 1
		notify.sh "Audio 2" "Headphones" "" 2 update
	fi


