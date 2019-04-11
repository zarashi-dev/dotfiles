#!/usr/bin/env zsh
# For Zplug

# colorschme
zplug "carloscuesta/materialshell", as:theme, use:materialshell

# history
zplug "zsh-users/zsh-history-substring-search"

# syntax
zplug "zsh-users/zsh-syntax-highlighting", defer:2

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