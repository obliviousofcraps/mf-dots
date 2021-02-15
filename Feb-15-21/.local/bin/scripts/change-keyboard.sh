#!/bin/bash

lang=$(setxkbmap -query | grep layout | sed 's/layout.* //g')

if [[ $lang == "de" ]]
then
    setxkbmap us
    notify-send 'Keyboard Layout > US'
elif [[ $lang == "us" ]]
then
    setxkbmap de
    notify-send 'Keyboard Layout > DE'
fi
