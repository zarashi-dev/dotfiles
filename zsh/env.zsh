#!/usr/bin/env zsh
# For Zshell interactive & non-interactive
# Should by symlinked to ~/.zshenv

# Read global environment file

if [[ -a "${XDG_CONFIG_HOME:=${HOME}/.config}/bash/env.bash" ]]; then
  source "${XDG_CONFIG_HOME}/bash/env.bash"
else
  echo "could not find 'env.bash' file" 1>&2
fi

