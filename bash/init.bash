#!/usr/bin/env bash
# For Bash interactive
# Should be symlinked to both ~/.bashrc & ~/.bash_profile

# Also read: 
# https://www.gnu.org/software/bash/manual/bash.html#Bash-Startup-Files

# Read global environment file
__env_file="env.bash"

if [[ -z "${BASH_ENV}" ]]; then
  if [[ -n "${XDG_HOME_DIR}" ]]; then
    export BASH_ENV="${XDG_HOME_DIR}/bash/${__env_file}"
  elif [[ -a "${HOME}/.config/bash/${__env_file}" ]]; then
    # try resolving the default XDG Config directory
    export BASH_ENV="${HOME}/.config/bash/${__env_file}"
  elif [[ -a "${BASH_SOURCE%/*}/${__env_file}" ]]; then
    # if could not, env file should be in the same directory
    export BASH_ENV="${BASH_SOURCE%/*}/${__env_file}"
  else
    printf "could not find '${__env_file}' file" 1>&2
  fi
fi

source "${BASH_ENV}"

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

