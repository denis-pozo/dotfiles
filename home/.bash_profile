source ${HOME}/development/default-profile/bash_profile
export PATH="$HOME/bin:$PATH"

source ~/.aliases
source ~/.functions

# Enable vim modes in command line
set -o vi
bind '"jk":vi-movement-mode'
