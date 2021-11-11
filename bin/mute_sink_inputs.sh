#! /bin/bash


function sink_input()
{
    echo "$(pulsemixer --list-sinks | awk '/Sink input/ {print $6}'| tr -d ,)"
}

# Rofi Browser select
BROWSER=$(sink_input | rofi -dmenu)


sink_input_id=$(pulsemixer --list-sinks | grep $BROWSER | awk '{print $4}' | tr -d ,)

mute=$(pulsemixer --list-sinks | grep $BROWSER | awk '{print $8}' | tr -d ,)


if (($mute==0)) 
then
    pulsemixer --mute --id $sink_input_id
else
    pulsemixer --unmute --id $sink_input_id
fi

#echo $mute
#pulsemixer --list-sinks | awk '/Chromium/ {print $4}'| tr -d ,
