# Programs
numlockx
picom --experimental-backends --xrender-sync-fence &
dunst &
xfce4-power-manager &

# Scripts
bin/main_display_layout.sh 
bin/copyq_create &

# Misc
feh --bg-scale /mnt/win2/Wallpapers/astronaut.png

# Devices
systemctl --user restart pulseaudio.service
bin/mouse_decel.sh

# IMP
exec bspwm
