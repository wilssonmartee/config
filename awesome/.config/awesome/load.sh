#!/bin/sh
#

xfce4-power-manager &
nm-applet --no-agent &
udiskie &
synclient TapButton1=1 &

# Start polkit (para autentificaion gparted y otros)
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
