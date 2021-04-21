#!/bin/bash

lang=$(setxkbmap -query | grep layout | sed 's/layout.* //g')
variant=$(setxkbmap -query | grep variant | sed 's/variant.* //g')


case $1 in 
	icon)
		echo "󰧹";;
	
	layout)
		if [[ $lang == "de" ]]
		then
			echo "de"
		elif [[ $lang == "us" ]]
		then 
			if [[ $variant ]]
            then
                echo "$variant"
            else
                echo "us"
            fi
		fi
        ;;
esac 
