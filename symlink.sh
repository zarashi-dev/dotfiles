#!/usr/bin/env bash
# Utility script to perform neccessary symlinking

export DOTDIR="${HOME}/.config"

function ln_if_exists {
  if [[ -a "$1" ]]; then
    ln -s $1 $2
  else
    echo "$1 is not found" 1>&2
  fi
}

# bash
ln_if_exists "${DOTDIR}/bash/init.bash" "${HOME}/.bash_profile"
ln_if_exists "${DOTDIR}/bash/init.bash" "${HOME}/.bashrc"

# zsh
ln_if_exists "${DOTDIR}/zsh/env.zsh" "${HOME}/.zshenv"
ln_if_exists "${DOTDIR}/zsh/init.zsh" "${HOME}/.zshrc"
