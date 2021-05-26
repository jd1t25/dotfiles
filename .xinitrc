#!/bin/sh

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

numlockx
picom &
xfce4-power-manager &
main_display_layout.sh
sxhkd &
exec awesome
#numlockx
#picom &
#xfce4-power-manager &
#sxhkd &
#sleep 3
#./bin/main_display_layout.sh
#echo 'awesome.restart()' | awesome-client
#sleep 1

