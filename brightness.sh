#!/bin/bash

i3status | while :
do
	read line
	value=$(("$(cat /sys/class/backlight/radeon_bl0/brightness)"*100/255))
	echo "Brightness: $value | $line" || exit 1
done 
