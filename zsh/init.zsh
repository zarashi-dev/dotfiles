#!/usr/bin/env zsh
# For Zshell interactive
# Should be symlinked to ~/.zshrc

export ZPLUG_HOME="${XDG_DATA_HOME}/zplug"
export ZPLUG_CACHE_DIR="${XDG_CACHE_HOME}/zplug"
export ZPLUG_LOADFILE="${XDG_CONFIG_HOME}/zsh/plugins.zsh"

if [[ -d "${ZPLUG_HOME}" ]]; then
  source "${ZPLUG_HOME}/init.zsh"
fi
