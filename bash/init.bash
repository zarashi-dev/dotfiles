#!/usr/bin/env bash
# For Bash interactive
# Should be symlinked to both ~/.bashrc & ~/.bash_profile

# Also read: 
# https://www.gnu.org/software/bash/manual/bash.html#Bash-Startup-Files

# Read global environment file


if [[ -a "${XDG_CONFIG_HOME:=${HOME}/.config}/bash/env.bash" ]]; then
  source "${XDG_CONFIG_HOME}/bash/env.bash"
else
  echo "could not find 'env.bash' file" 1>&2
fi

# HISTORY
export HISTFILE="$XDG_DATA_HOME/bash/history"
export HISTSIZE=10000

function __talk_histfile {
  history -a
  history -c
  history -r
}

export PROMPT_COMMAND="__talk_histfile"
shopt -u histappend

