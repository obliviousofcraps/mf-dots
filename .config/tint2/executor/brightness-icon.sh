#!/bin/sh

# This script display an appropriate brightness icon according to the brightness level

# Author: Piotr Miller
# e-mail: nwg.piotr@gmail.com
# Website: http://nwg.pl
# Project: https://github.com/nwg-piotr/tint2-executors
# License: GPL3

# Dependencies: `xbacklight` or `light-git'

# Prefer the `light` package, use `xbacklight` if `light` not found
#if [[ $(which light) == *"/light"* ]]
#then
#    b=$(light -G)
#else
#    b=$(xbacklight -get)
#fi

# Lets round the float result
bri=$(brightnessctl -m -d intel_backlight | awk -F, '{print substr($4, 0, length($4)-1)}' | tr -d '%')

if [[ "$bri" -gt "80" ]]; then
    echo "󰃠"
elif [[ "$bri" -gt "60" ]]; then
	echo "󰃝"
elif [[ "$bri" -gt "30" ]]; then
    echo "󰃟"
elif [[ "$bri" -gt "20" ]]; then
    echo "󰃞"
else
    echo "󰃞"
fi
if  [[ $1 = "-l" ]]; then
    echo ${bri}%
fi
