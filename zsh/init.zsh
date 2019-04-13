#!/usr/bin/env zsh
# For Zshell interactive
# Should be symlinked to ~/.zshrc

# zplug
export ZPLUG_HOME="${XDG_DATA_HOME}/zplug"
export ZPLUG_CACHE_DIR="${XDG_CACHE_HOME}/zplug"
export ZPLUG_LOADFILE="${XDG_CONFIG_HOME}/zsh/plugins.zsh"

if [[ -d "${ZPLUG_HOME}" ]]; then
  source "${ZPLUG_HOME}/init.zsh"
fi

# git
alias g="git"
alias gs="git status"
alias gc="git commit"
# pv
alias pv="pv -pterabT"

# iso
function convert_iso {
  os_is 'macos' && {
    hdiutil convert -format UDRW -o ${1%.*}.dmg ${1}
    mv ${1%.*}.dmg ${1%.*}.img
  }

}

# docker
alias dr="docker run -it --init --rm"
