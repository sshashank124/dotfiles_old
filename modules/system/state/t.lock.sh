#!/bin/sh
lock_dir=/tmp/lock_screen
mkdir -p "$lock_dir"
scrot $lock_dir/bg.png
magick $lock_dir/bg.png -filter point -resize 10% -resize 1000% $lock_dir/bg.png
magick $XDG_CONFIG_HOME/system/state/overlay.png -fill "#{{ colors.accent }}" -colorize 100% $lock_dir/arch_colorized.png
magick $lock_dir/bg.png $lock_dir/arch_colorized.png -gravity center -composite -alpha Set $lock_dir/lock_screen.png
i3lock -e -u -i $lock_dir/lock_screen.png
rm -r "$lock_dir"
