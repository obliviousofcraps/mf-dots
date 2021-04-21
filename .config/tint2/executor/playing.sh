#!/bin/sh

STATUS=$(playerctl status 2> /dev/null)

if [ "$STATUS" != "Playing" ] && [ "$STATUS" != "Paused" ]; then
    echo "  No player is running"
else
    P_ICON=""
    S_ICON=""
    METADATA="$(playerctl metadata artist) - $(playerctl metadata title)"
    TRIM=$(echo $METADATA | sed -e 's/([^()]*)//g' | cut -c 1-50)
    ARTIST=$(playerctl metadata artist)
    FULL_META=$(playerctl metadata)
    case $STATUS in
        "Playing")
            # if spotify is playing on another device artist and song will be empty
            if [[ "$ARTIST" == "" ]] && [[ "$FULL_META" =~ "spotify" ]]; then
                echo $P_ICON"  ""Playing on Another Device"
            else
                echo $P_ICON"  "$TRIM
            fi;;
        "Paused")
            if [[ "$ARTIST" == "" ]] && [[ "$FULL_META" =~ "spotify" ]]; then
                echo $S_ICON"  "" Paused on Another Device"
            else
                echo $S_ICON"  "$TRIM
            fi;;
    esac
fi
