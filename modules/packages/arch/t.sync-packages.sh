#!/bin/sh
$(which pacman) -Qeq > {{ env.XDG_CONFIG_HOME }}/astrality/modules/packages/arch/packages.txt
