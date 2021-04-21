#!/bin/bash
pkill n30f
	MUSIC_DIR=/media/omar/Pribadi/MFO/Music/
	COVER=/tmp/mpd_cover.png
    
{	
	convert "$COVER" -resize 130 -bordercolor "#626b7e" -border 5x5 "$COVER"
	n30f -x 220 -y 35 -d ${COVER} -c "pkill n30f"
} &
