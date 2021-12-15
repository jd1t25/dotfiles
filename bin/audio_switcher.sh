#!/bin/bash

CURRENT_SINK=$(pacmd stat | grep "Default sink name" | sed 's/.*: *//')

#echo $CURRENT_SINK

	if [ "$CURRENT_SINK" == "alsa_output.usb-Conexant_CONEXANT_USB_AUDIO_000000000000-00.analog-stereo" ]
	then
		pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo
		notify-send -t 2500 "Audio 2 Speaker" --icon="~/.icons/speaker.png"
	else
		pactl set-default-sink alsa_output.usb-Conexant_CONEXANT_USB_AUDIO_000000000000-00.analog-stereo
		notify-send -t 2500 "Audio 2 Headphones" --icon="~/.icons/headphones-solid.png"
	fi


