#!/usr/bin/env zsh
# For Zshell interactive & non-interactive
# Should by symlinked to ~/.zshenv

# Read global environment file
__env_file="env.bash"

if [[ -z "${BASH_ENV}" ]]; then
  if [[ -n "${XDG_HOME_DIR}" ]]; then
    export BASH_ENV="${XDG_HOME_DIR}/bash/${__env_file}"
  elif [[ -a "${HOME}/.config/bash/${__env_file}" ]]; then
    # try resolving the default XDG Config directory
    export BASH_ENV="${HOME}/.config/bash/${__env_file}"
  else
    printf "could not find '${__env_file}' file" 1>&2
  fi
fi

source "${BASH_ENV}"
