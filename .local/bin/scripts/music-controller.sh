#!/usr/bin/env bash
source $HOME/.owl4ce_var

CURRENT_MUSICPL="mpd"

if [[ $CURRENT_MUSICPL = *"mpd"* ]]; then
    prev="mpc -q prev"
    toggle="mpc -q toggle"
    stop="mpc -q stop"
    next="mpc -q next"
    status="mpc status"
    #title="$(mpc current)"
    title="$(mpc --format '[%title%|%file%]' current)"
    artist="$(mpc --format '[%artist%]' current)"
else
    if [[ $CURRENT_MUSICPL = *"spotify"* ]]; then
        prev="playerctl -p spotify previous"
        toggle="playerctl -p spotify play-pause"
        stop="playerctl -p spotify stop"
        next="playerctl -p spotify next"
        status="playerctl -p spotify status"
        title="$(playerctl -p spotify metadata -f '{{title}}')"
    else
        prev=""
        toggle=""
        stop=""
        next=""
        status=""
        title="There is no mpd or spotify installed"
    fi
fi

status="$($status)"

case $1 in
    icon)
        if [[ $status = *"laying"* ]]; then
            echo ""
        elif [[ $status = *"paused"* ]]; then
			echo "󰏥"
		else
            echo "󰎈"
        fi
    ;;
    prev)
        bash -c "$prev"
    ;;
    toggle)
        bash -c "$toggle"
    ;;
    stop)
        bash -c "$stop"
    ;;
    next)
        bash -c "$next"
    ;;
    status)
        echo "$status"
    ;;
    title)
        # For song title on the panel
        echo "$title"
    ;;
    artist)
        # For song artist on the panel
        echo "$artist"
    ;;
    separator)
        # For separator
        if [[ $status = *"laying"* ]];
        then
            echo " - "
        elif [[ $status = *"paused"* ]];
        then
            echo " - "
        else
            echo ""
        fi
    ;;
    switchpl)
        bash -c "$toggle"
        # Switch music player between mpd and spotify
        if [[ $CURRENT_MUSICPL = *"mpd"* ]]; then
            sed -i 's_musicpl=".*"_musicpl="spotify"_' $DEFAPPS_FILE
        else
            if [[ $CURRENT_MUSICPL = *"spotify"* ]]; then
                sed -i 's_musicpl=".*"_musicpl="mpd"_' $DEFAPPS_FILE
            fi
        fi
        $EXNOTIFY_SEND -u low -i "$NOTIF_MUSIC_ICON" -r 8888 "Music Player" "Set <u>`$DEFAPPS_EXEC -g musicpl`</u> as default"
    ;;
esac
