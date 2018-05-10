#!/bin/sh
states="Lock|Suspend|Logout|Shutdown|Restart"
res=$(echo "$states" | {{ launcher.menu }} "System")

sleep 0.2

case "$res" in
  Shutdown) sudo systemctl poweroff ;;
  Restart) sudo systemctl reboot ;;
  Lock) $XDG_CONFIG_HOME/system/state/lock.sh & ;;
  Suspend) sudo systemctl suspend ;;
  Logout) {{ wm.exit }} ;;
  *) exit 1 ;;
esac
