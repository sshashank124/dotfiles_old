if [ -z "$DISPLAY"  ] && [ -n "$XDG_VTNR"  ] && [ "$XDG_VTNR" -eq 1  ]; then
  exec {{ desktop.run }} &> /dev/null
fi
