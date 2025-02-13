#!/bin/bash

IDLE_TIME=300000  # Tempo di inattività in millisecondi (300000 ms = 5 minuti)
CHECK_INTERVAL=10 # Controllo ogni 10 secondi

while true; do
    # Controlla se c'è una finestra full-screen
    if xdotool search --onlyvisible --class ".*" | while read -r win; do
        if xprop -id "$win" | grep -q "_NET_WM_STATE_FULLSCREEN"; then
            exit 0
        fi
    done; then
        sleep $CHECK_INTERVAL
        continue
    fi

    # Controlla se il sistema è inattivo da più di IDLE_TIME millisecondi
    if [ "$(xprintidle)" -gt "$IDLE_TIME" ]; then
        i3lock -B sigma --clock --ringwrong-color E5D4DC --insidewrong-color=ffffff22 --inside-color=7D1B1B80 \
               --line-color=CC0000 --ring-color=3D0000 --keyhl-color=DCD1D1 --verif-color=785E5C \
               --insidever-color=ffffff00 --ringver-color=9F5A5A --date-color=ffffff --time-color=EAD1DC
    fi

    sleep $CHECK_INTERVAL
done

