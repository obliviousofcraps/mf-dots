#!/usr/bin/env bash

rofi_command="rofi -theme themes/keyboard.rasi"

# Options
us=US-QWERTY
de=Deutsch
dv=US-DVORAK

# Variable passed to rofi
options="$us\n$dv\n$de"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $us)
        setxkbmap us && notify-send 'Keyboard > US'
        ;;
    $dv)
        setxkbmap -layout us -variant dvorak && notify-send 'Keyboard > Dvorak'
        ;;
    $de)
       setxkbmap de && notify-send 'Keyboard > DE'
        ;;
esac
