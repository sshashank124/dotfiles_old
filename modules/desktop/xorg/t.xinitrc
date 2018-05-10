[[ $(command -v xsetroot) ]] && xsetroot -cursor_name left_ptr
[[ $(command -v setxkbmap) ]] && setxkbmap -option ctrl:nocaps
[[ $(command -v mons) ]] && mons -s
[[ $(command -v {{ compositor.name }}) && -z $(pidof {{ compositor.name }}) ]] && {{ compositor.run }}

exec {{ wm.run }}
