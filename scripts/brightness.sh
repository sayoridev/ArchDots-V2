#!/bin/bash

# ID notify
NOTIFY_ID=9999

# get actual bright
BRIGHTNESS=$(brightnessctl get)
MAX_BRIGHTNESS=$(brightnessctl max)
PERCENTAGE=$((BRIGHTNESS * 100 / MAX_BRIGHTNESS))

if [ "$PERCENTAGE" -le 20 ]; then
    ICON="🌑"  # very low
elif [ "$PERCENTAGE" -le 50 ]; then
    ICON="🌘"  # medium-low
elif [ "$PERCENTAGE" -le 80 ]; then
    ICON="🌕"  # medium-high
else
    ICON="☀️"  # high bright
fi

# send updated notify
dunstify -a "Brightness" -r $NOTIFY_ID -u low "$ICON Luminosità: ${PERCENTAGE}%"

