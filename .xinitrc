# Programs
#numlockx
#dunst &
#xfce4-power-manager &
#
## Scripts
#bin/multi_monitor_display.sh 
#bin/copyq_create &

# Misc
#feh --bg-scale Downloads/liberate_by_yuumei_d6eruh3.jpg Downloads/to_the_sky_by_hangmoon_d655wks.jpg
#feh --bg-scale /mnt/win2/Wallpapers/astronaut.png

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Devices
systemctl --user restart pulseaudio.service
bin/mouse_decel.sh &
bin/multi_monitor_display &


touch /tmp/first_time


# IMP
exec bspwm
