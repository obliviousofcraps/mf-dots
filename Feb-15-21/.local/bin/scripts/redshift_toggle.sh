#!/bin/sh

# check if process is running ( 0 = off, 1 = on )
STATUS="$(ps -ef | grep -w '[r]edshift' | wc -l)"

# if off then turn on
if [[ "${STATUS}" == 0 ]];
then
  redshift >/dev/null 2>&1 & disown
  notify-send "Redshift on"

# else if on then turn off
elif [[ "${STATUS}" == 1 ]];
then
 # redshift -x && 
  killall redshift
  notify-send "Redshift off"
fi
