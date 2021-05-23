#!/bin/bash

ID=0
MSG="tmp"

if pgrep -x "picom" > /dev/null 2>&1 
then 
	killall -q picom
  notify.sh "Picom" "Activated" "" 2 update
else
	picom --experimental-backends &		
  notify.sh "Picom" "Dectivated" "" 2 update
fi


#notify_replace_notif()
#{
#  MSG=$1
#  ID=$(notify-send -r $ID "($MSG)")
#}
