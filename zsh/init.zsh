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

# history
export HISTFILE="${XDG_CACHE_HOME}/zsh/histfile"
export HISTSIZE=1001
export SAVEHIST=1000
setopt APPEND_HISTORY # set by default
setopt EXTENDED_HISTORY # include timestamp + duration
setopt INC_APPEND_HISTORY_TIME # write history after the command is finished
setopt HIST_FCNTL_LOCK # use OS-native filelock
setopt HIST_EXPIRE_DUPS_FIRST # need $HISTSIZE > $SAVEHIST
setopt HIST_IGNORE_DUPS # remove if the same commands are entered consecutively
setopt HIST_IGNORE_SPACE # remove first character if whitespace
setopt HIST_LEX_WORDS # shell-like whitespace handling
setopt HIST_NO_FUNCTIONS
setopt HIST_NO_STORE # supress storing history command itself
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY # safe paste; do not execute the command directly

# history search
setopt HIST_FIND_NO_DUPS

# git
alias g="git"
alias gs="git status"
alias gc="git commit"
alias gd="git diff"
alias ga="git add"

# ls
function __short_ls_print {
  awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o %4s %s %s %s\n",k,$5,$9,$10,$11);else print}'
}
os_is 'macos' && alias ls="ls -AGF" ## BSD-style
os_is 'linux' && alias ls="ls -A --color -F" ## GNU-style
alias lsl="CLICOLOR_FORCE=1 ls -AGFlh | __short_ls_print"
alias lsa="ls -alh"

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
