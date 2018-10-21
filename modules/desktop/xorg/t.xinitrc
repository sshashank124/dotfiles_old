#!/bin/sh
# custom display startup scripts
if [ -d {{ host.user.paths.display_init }} ]; then
  for f in {{ host.user.paths.display_init }}/*; do
    if [ -x "$f" ]; then $f; fi
  done
fi

exec {{ wm.run }}
