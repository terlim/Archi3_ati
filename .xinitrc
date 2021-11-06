#!/bin/bash

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export LANG="ru_RU.UTF-8"
export QT_QPA_PLATFORMTHEME="qt5ct"
export TERMINAL="alacritty"


/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

udiskie &
#xrandr --output DVI-0 --auto --left-of HDMI-0

xset r rate 250 40

numlockx &
setxkbmap -option 'ctrl:nocaps' &
setxkbmap us,ru -model pc105 -option 'grp:alt_shift_toggle' &

perWindowLayoutD &

exec dbus-launch i3 &

