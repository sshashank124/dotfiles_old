autoload -Uz compinit
compinit

bindkey -e

##### PATH ##### 
export PATH=~/bin:$PATH

##### HISTORY ##### 
# History File
HISTFILE="$ZDOTDIR/.history"
HISTSIZE=5000
SAVEHIST=10000

# Confirm substituted command (!!:) before running
setopt hist_verify

# Append to and sync commands with history file as they are run
setopt append_history
setopt inc_append_history
setopt share_history

# Avoid command duplicates in history
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_reduce_blanks

setopt hist_no_store
setopt hist_no_functions
setopt no_hist_beep

##### POWER USER ##### 
setopt no_beep
setopt auto_cd
setopt extended_glob

##### BACKGROUND JOBS ##### 
setopt no_hup
setopt no_check_jobs

##### COMPLETIONS #####
setopt globdots
setopt complete_in_word
setopt complete_aliases

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' \
                                    'r:|[._-]=* r:|=*' \
                                    'l:|=* r:|=*'

# Fuzzy match mistyped completions.
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
# Increase the number of errors based on the length of the typed word.
zstyle -e ':completion:*:approximate:*' max-errors \
  'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
# Ignore completion functions for unavailable commands
zstyle ':completion:*:functions' ignored-patterns '_*'

##### PROMPTS ##### 
setopt prompt_subst

NL=$'\n'
virtual_env='$([ -n "$VIRTUAL_ENV" ] && basename $VIRTUAL_ENV)'
PS1="${NL}%B%F{yellow}%~ %F{cyan}${virtual_env}%f%b${NL}%B%F{magenta}λ %f%b"
unset virtual_env
unset NL
job_names='$(jobs | awk '\''{printf " %s%s", $2, $4}'\'')'
RPS1="%B%1(j.%F{green}${job_names}.)%(?.. %F{blue}%?)%f%b"
unset job_names

##### ZLE ##### 
bindkey '^?' backward-delete-char
bindkey '^W' backward-kill-word
bindkey '^H' backward-delete-char
bindkey '^U' backward-kill-line

bindkey '^[p' history-beginning-search-backward
bindkey '^[n' history-beginning-search-forward

WORDCHARS=${WORDCHARS//[\/\=_]}

##### MISC #####
KEYTIMEOUT=1

# Load aliases
alias_rc="$ZDOTDIR/.aliasrc"
[[ -r $alias_rc ]] && source $alias_rc
unset alias_rc

# z
z_script='/usr/share/z/z.sh'
[[ -r $z_script ]] && source $z_script
unset z_script

# custom rc files
if [[ -d ~/bin/rc ]]; then
  for rc_file in ~/bin/rc/*; source $rc_file
fi

# Temp fix for CtrlP overriding guicursor in neovim even when it's set to empty
export VTE_VERSION=100

# Turn off legacy scroll locking
stty -ixon
