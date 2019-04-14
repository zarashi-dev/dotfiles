#!/usr/bin/env bash
# Utility script to perform neccessary symlinking

export DOTDIR="${0%/*}"

# bash
ln -s "${DOTDIR}/bash/init.bash" "${HOME}/.bash_profile"
ln -s "${DOTDIR}/bash/init.bash" "${HOME}/.bashrc"

# zsh
ln -s "${DOTDIR}/zsh/env.zsh" "${HOME}/.zshenv"
ln -s "${DOTDIR}/zsh/init.zsh" "${HOME}/.zshrc"
