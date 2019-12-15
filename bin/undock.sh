#!/bin/bash
# Turn off everything, turn on the laptop monitor.

for output in $(/usr/bin/xrandr -d :0.0 --verbose|grep " connected"|grep -v LVDS|awk '{print $1}')
	do
	/usr/bin/xrandr -d :0.0 --output $output --off
done

/usr/bin/xrandr -d :0.0 --output LVDS1 --auto --primary
