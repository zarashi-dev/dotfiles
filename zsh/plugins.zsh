#!/usr/bin/env zsh
# For Zplug

# manage myself
zplug "zplug/zplug", hook-build:"zplug --self-manage"

# colorschme
zplug "chrissicool/zsh-256color"
zplug "carloscuesta/materialshell", as:theme, use:materialshell

# history
zplug "zdharma/history-search-multi-word"

# syntax
zplug "zdharma/fast-syntax-highlighting", defer:2

# vi-mode
zplug "b4b4r07/zsh-vimode-visual", defer:3

# sudo
zplug "hcgraf/zsh-sudo"

# dd
zplug "zarashi-dev/dd-bench", as:command

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        printf "\n"
        zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
