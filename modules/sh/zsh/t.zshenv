##### ENVIRONMENT VARIABLES #####
# Configuration directories
export XDG_CONFIG_HOME=$HOME/.config
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# Set editor to vim
export EDITOR={{ editor.run }}
export VISUAL={{ editor.run }}

# Android Studio gray screen on launch
export _JAVA_AWT_WM_NONREPARENTING=1

# disable some files from being generated in ~
export LESSHISTFILE=-
export NODE_REPL_HISTORY=""
export __GL_SHADER_DISK_CACHE_PATH=~/.cache/

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
