#!/bin/sh
states="Lock|Suspend|Logout|Shutdown|Restart"
res=$(echo "$states" | $HOME/bin/selector "System")

sleep 1

case "$res" in
  Shutdown) sudo systemctl poweroff ;;
  Restart) sudo systemctl reboot ;;
  Lock) $HOME/bin/lock ;;
  Suspend) sudo systemctl suspend ;;
  Logout) $HOME/bin/wm_exit ;;
  *) exit 1 ;;
esac
