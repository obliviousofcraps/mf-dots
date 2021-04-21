#!/bin/sh

snap_shot=~/Documents/Snapshots/snap_$(date +%y_%m_%d_%H_%M).png

maim -s -m 10 "$snap_shot"

notify-send Screenshot -i "$snap_shot" -u normal 'Snapshot Saved'
