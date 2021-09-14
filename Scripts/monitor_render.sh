#!/bin/sh
num=$(xrandr | awk '/ connected/' | wc -l);

if [ $num = 1 ];
then
    xrandr --output eDP-1 --primary --mode 1920x1080
elif [ $num = 2 ];
then
    xrandr --output eDP-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off
else
    xrandr --output eDP-1 --mode 1920x1080 --pos 3840x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output DP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-1-3 --primary --mode 1920x1080 --pos 1920x0 --rotate normal
fi
nitrogen --restore --sync
