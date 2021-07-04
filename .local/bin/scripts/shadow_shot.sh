#/bin/env sh

shot=~/Pictures/Snapshots/snap_$(date +%y_%m_%d_%H_%M_%S).png

maim -u -s -m 10 "$shot"

convert "$shot" \( +clone -background "#3c414c" -shadow 125x20+0+0+0 \) +swap -bordercolor none -border 0 -background none -layers merge +repage $shot

notify-send Screenshot -i "$shot" -u normal 'Snapshot Saved'
