#!/bin/bash
CONFIG="$HOME/.config/i3/config"

inotifywait -m -e close_write "$CONFIG" | while read -r path _ file; do
    i3-msg reload
    notify-send "i3" "Reloaded config after $file was saved"
done
