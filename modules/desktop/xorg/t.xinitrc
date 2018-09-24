[[ $(command -v xsetroot) ]] && xsetroot -cursor_name left_ptr
[[ $(command -v setxkbmap) ]] && setxkbmap -option ctrl:nocaps
[[ $(command -v mons) ]] && mons -s
[[ $(command -v {{ compositor.name }}) && -z $(pidof {{ compositor.name }}) ]] && {{ compositor.run }}

# custom display startup scripts
if [[ -d ~/bin/display_startup ]]; then
  for f in ~/bin/display_startup/*; do
    if [[ -x $f ]]; then $f; fi
  done
fi

exec {{ wm.run }}
