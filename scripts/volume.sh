#!/bin/bash

# ID della notifica per aggiornarla invece di crearne una nuova
NOTIFY_ID=9998

# Ottieni il volume attuale
VOLUME=$(pamixer --get-volume)
MUTE=$(pamixer --get-mute)

# Se l'audio è muto, cambia il messaggio
if [ "$MUTE" = "true" ]; then
    dunstify -a "Volume" -r $NOTIFY_ID -u low "🔇 Audio Disattivato"
else
    dunstify -a "Volume" -r $NOTIFY_ID -u low "🔊 Volume: ${VOLUME}%"
fi

