source ${HOME}/development/default-profile/bash_profile
export PATH="$HOME/bin:$PATH"

export AWS_CONFIG_FILE=${HOME}/development/default-profile/config/.aws/config

source ~/.aliases
source ~/.functions

# Enable vim modes in command line
set -o vi
bind '"jk":vi-movement-mode'
. "$HOME/.cargo/env"

# Select nvim as bash editor
export VISUAL=/usr/local/bin/nvim
export EDITOR="$VISUAL"

# Modify colors for ls command
export LSCOLORS=GxFxCxDxBxegedabagaced

# Enable git autocompletion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source /Users/denispozo/.docker/init-bash.sh || true # Added by Docker Desktop

# Enable fuzzy search
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
