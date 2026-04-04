#!/bin/bash
# Hyprland Autostart Script
# NERV/Amber Theme Setup

# Start XDG Desktop Portal for screen sharing

# Clipboard daemon (cliphist)
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &

# Set wallpaper
# hyprpaper &
# sleep 1
# hyprctl hyprpaper preload /home/engel/Pictures/Makima.png
# hyprctl hyprpaper wallpaper /home/engel/Pictures/Makima.png

# Start notification daemon (mako)
mako &

# Start nm-applet BEFORE waybar (tray must register first)
nm-applet --indicator&

# Start snixembed for Discord/Steam tray icons
snixembed &

# Audio Server

# Start waybar
waybar &

# Start polkit agent
/usr/lib/polkit-kde-authentication-agent-1 &

# Idle lock - lock after 5 minutes
swayidle -w timeout 300 'hyprlock' before-sleep 'hyprlock' &

swww-daemon &
swww img ~/Pictures/makima.png

# Set environment variables for Qt/GTK
export QT_STYLE_OVERRIDE=kvantum
export QT_QPA_PLATFORMTHEME=kvantum


echo "Hyprland autostart complete"

