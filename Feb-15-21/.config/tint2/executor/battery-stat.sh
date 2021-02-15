#!/bin/bash

function batt_percent {
	acpi | awk '{print substr($4, 1, length($4)-1)}'
}

function batt_icon {
	acpi | awk '{print substr($3, 1, length($3)-1)}'
}

batt=`batt_percent`
batticon=`batt_icon`

batt_charge="󰢝"
batt_critical="󰂃"
batt_ten="󰁻"
batt_thirty="󰁼"
batt_medium="󰁾"
batt_seventy="󰂀"
batt_ninety="󰂂"
batt_full="󱈑"

case $1 in
	percent)
	echo "$batt";;
	
	icon)
	if [[ "$batticon" == "Charging" ]];
	then
		echo "$batt_charge"
	
	else
		echo "$batt_full"
		
		#if [[ "$batt" -ge "95%" ]];
		#then
		#	echo "$batt_full"
		#elif [[ "$batt" -ge "75%" ]];
		#then 
		#	echo "$batt_ninety"
		#elif [[ "$batt" -ge "50%" ]];
		#then 
		#	echo "$batt_seventy"
		#elif [[ "$batt" -ge "31%" ]];
		#then 
		#	echo "$batt_medium"
		#elif [[ "$batt" -ge "15%" ]];
		#then 
		#	echo "$batt_thirty" 
		#else 
		#	echo "$batt_critical"
		#fi
		
	fi
	;;
esac
