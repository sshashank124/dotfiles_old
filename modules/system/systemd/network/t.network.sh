#!/bin/sh
states="Start|Stop|Restart"
res=$(echo "$states" | {{ launcher.menu }} "Wifi")

case "$res" in
  "Start") sudo systemctl start netctl-auto@{{ host.interfaces.wlan }}.service ;;
  "Stop") sudo systemctl stop netctl-auto@{{ host.interfaces.wlan }}.service ;;
  "Restart") sudo systemctl restart netctl-auto@{{ host.interfaces.wlan }}.service ;;
  *) exit 1 ;;
esac
