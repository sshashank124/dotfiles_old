# desktop settings
[[ $(command -v xsetroot) ]] && xsetroot -cursor_name left_ptr
[[ $(command -v setxkbmap) ]] && setxkbmap -option ctrl:nocaps

# launch elements
[[ $(command -v feh) ]] && feh --bg-scale --no-fehbg $XDG_CONFIG_HOME/wallpapers/wallpaper.jpg &

# custom display startup scripts
if [[ -d ~/bin/display_startup ]]; then
  for f in ~/bin/display_startup/*; do
    if [[ -x $f ]]; then $f; fi
  done
fi

exec {{ wm.run }}
