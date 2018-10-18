#!/bin/sh
# custom display startup scripts
if [ -d ~/bin/display_startup ]; then
  for f in ~/bin/display_startup/*; do
    if [ -x "$f" ]; then $f; fi
  done
fi

exec {{ wm.run }}
