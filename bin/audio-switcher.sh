#!/bin/bash

CURRENT_SINK=$(pacmd stat | grep "Default sink name" | sed 's/.*: *//')

#echo $CURRENT_SINK

	if [ "$CURRENT_SINK" == "alsa_output.usb-Conexant_CONEXANT_USB_AUDIO_000000000000-00.analog-stereo" ]
	then
		pactl set-default-sink 2
		exit 1
	else
		pactl set-default-sink 1
		exit 1
	fi

