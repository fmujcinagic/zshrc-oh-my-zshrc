#!/bin/bash

# Pick directory with fzf
DIR=$(find ~/Projects ~/Work ~/ -maxdepth 2 -type d 2>/dev/null | fzf --height 40% --reverse --border --prompt="Select dir: ")

[ -z "$DIR" ] && exit 0

# Inside tmux: open new window in that dir
tmux new-window -c "$DIR" -n "$(basename "$DIR")"
