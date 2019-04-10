#!/usr/bin/env bash
# For Bash interactive & non-interactive
# Should be read regadless of what shell is used

# Helper
## OS switcher
function os_is {
  case ${1} in
    mac | macos | osx )
      if [[ ${OSTYPE} =~ "darwin" ]]; then
        return 0
      fi;;
  esac

  return 1
}

## Shell switcher
function shell_is {
  case ${1} in
    bash )
      if [[ -n ${BASH_VERSION} ]]; then
        return 0
      fi;;
    zsh )
      if [[ -n ${ZSH_VERSION} ]]; then
        return 0
      fi;;
  esac

  return 1
}

## Path
function append_path {
  # Check if path is already added
  if [[ ! ":${PATH}:" =~ ":${*}:" ]]; then
    export PATH="${*}:${PATH}"
  fi
}

# Global variables
## XDG
export XDG_HOME="${HOME}"
export XDG_CONFIG_HOME="${XDG_HOME}/.config"
export XDG_CACHE_HOME="${XDG_HOME}/.cache"
export XDG_DATA_HOME="${XDG_HOME}/.local/share"
export XDG_BIN_HOME="${XDG_HOME}/.local/bin" # defined as $XDG_BIN_HOME although it is not genuinely XDG; perhaps this is systemd file-hierarchy style

## Path
append_path "${XDG_BIN_HOME}" 
append_path "/usr/local/sbin"

## Editor
export EDITOR="nvim"
alias sudoedit="sudo -e"

## Git
export GIBO_BOILERPLATES="${XDG_DATA_HOME}/gibo"

## BASH
export BASH_ENV="${XDG_CONFIG_HOME}/bash/env.bash"

## ZSH
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

# Language specific variables
## Java
if os_is 'macos'; then
  export JAVA_HOME="$(/usr/libexec/java_home)"
fi

## Ruby
## TODO Fix rbenv not working; retry after reinstall
if (which rbenv 1>/dev/null 2>&1); then
  export RBENV_ROOT="${XDG_DATA_HOME}/rbenv"
  append_path "${RBENV_ROOT}/shims"
  if shell_is 'zsh'; then
    export RBENV_SHELL=zsh
  elif shell_is 'bash'; then
    export RBENV_SHELL=bash
  fi
fi

# vim: filetype=sh:
