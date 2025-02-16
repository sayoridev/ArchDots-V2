#!/bin/bash

# notify id
NOTIFY_ID=9999

# get te actual bright
BRIGHTNESS=$(brightnessctl get)
MAX_BRIGHTNESS=$(brightnessctl max)
PERCENTAGE=$((BRIGHTNESS * 100 / MAX_BRIGHTNESS))

# send the notify
dunstify -a "Brightness" -r $NOTIFY_ID -u low "Luminosità: ${PERCENTAGE}%"

