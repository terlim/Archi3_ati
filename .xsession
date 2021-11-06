#!/bin/bash
export LANG="ru_RU.UTF-8"
export QT_QPA_PLATFORMTHEME="qt5ct"

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

xset r rate 250 40

udiskie &
xrandr --output HDMI-0 --auto --right-of DVI-0 --auto

numlockx &
setxkbmap -option 'ctrl:nocaps' &
setxkbmap us,ru -model pc105 -option 'grp:alt_shift_toggle' &

perWindowLayoutD &

