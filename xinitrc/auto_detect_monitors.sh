#!/bin/bash

laptop=0
if $(xrandr | grep -q "eDP1 connected");then
	echo "Laptop display, eDP1 detected"
	laptop=1
fi

hdmi=0
if $(xrandr | grep -q "DP-3 connected");then
	echo "HDMI display, DP-3 detected"
	hdmi=1
fi

if ((laptop)) && ((hdmi));then
	echo "Enabling both eDP1 and DP-3"
	xrandr --output eDP1 --mode 1920x1080 --output DP-3 --auto --right-of eDP1
fi

if ((laptop)) && !((hdmi));then
	echo "Enabling eDP1"
	xrandr --output eDP1 --mode 1920x1080
fi



