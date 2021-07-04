#!/bin/sh

snap_shot=~/Pictures/Snapshots/snap_$(date +%y_%m_%d_%H_%M_%S).png

maim -u -s -m 10 "$snap_shot"

notify-send Screenshot -i "$snap_shot" -u normal 'Snapshot Saved'
