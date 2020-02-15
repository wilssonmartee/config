#!/bin/sh
#

# Power Manager
xfce4-power-manager &
# udiskie (automount usb)
udiskie &
# Enable tap (touchpad)
synclient TapButton1=1 &

# Start polkit (para autentificaion gparted y otros)
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

sleep 8
# Network manager applet (tray icon)
nm-applet &
