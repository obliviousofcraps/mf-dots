#!/usr/bin/env bash

rofi_command="rofi -theme themes/sidebar/five.rasi"

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        ~/.config/rofi/scripts/promptmenu.sh --yes-command "poweroff" --query "Are you sure want to Poweroff?"
        ;;
    $reboot)
        ~/.config/rofi/scripts/promptmenu.sh --yes-command "reboot" --query "Are you sure want to Reboot?"
        ;;
    $lock)
        slimlock
        ;;
    $suspend)
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $logout)
        ~/.config/rofi/scripts/promptmenu.sh --yes-command "openbox --exit | i3-msg exit" --query "Logout?"
        ;;
esac

