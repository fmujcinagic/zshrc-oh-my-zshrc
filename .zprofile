if [ -z "$TMUX" ] && [ -t 1 ]; then
  tmux attach -t main 2>/dev/null || tmux new -s main
fi
