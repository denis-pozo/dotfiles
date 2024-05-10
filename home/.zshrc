# Loading configuration
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.functions ] && source ~/.functions 

# Antibody plugins manager (static loading)
# Update plugins with antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
source ~/.zsh_plugins.sh

# Path
path=("/usr/local/opt/openssl/bin" $path)
path=("/usr/local/opt/gnu-getopt/bin" $path)
path=("/usr/local/opt/coreutils/libexec/gnubin" $path)
path=("/usr/local/opt/make/libexec/gnubin" $path)
path=("/usr/local/opt/findutils/libexec/gnubin" $path)
path=("/usr/local/opt/gnu-sed/libexec/gnubin" $path)
path=("/usr/local/opt/grep/libexec/gnubin" $path)
path=("/usr/local/opt/curl/bin" $path)
path=("/usr/local/opt/sqlite/bin" $path)
path=("/usr/local/sbin" $path)
path=("$HOME/development/toolbox/bin" $path)
path=("$HOME/development/bidder/bin" $path)
path=("$HOME/development/management/bin" $path)
path=("$HOME/development/broker/bin" $path)
path=("/usr/local/opt/tcl-tk/bin" $path)

# Locale
export LC_ALL=en_US.UTF-8

# History
# http://zsh.sourceforge.net/Doc/Release/Options.html#History
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000

# Require cd always
unsetopt autocd

# Enable vi-mode in command line
bindkey -v
bindkey 'jk' vi-cmd-mode 
export KEYTIMEOUT=100
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

export VISUAL=/usr/local/bin/nvim
export EDITOR="$VISUAL"

# starship prompt
eval "$(starship init zsh)"

# Zsh autocompletion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Tmux colors
export TERM="xterm-256color"

# Local IP for live servers
export LOCAL_IP=`ipconfig getifaddr en0`

# Pyenv
export PYTHON_CONFIGURE_OPTS="--enable-framework"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

source /Users/denispozo/.docker/init-zsh.sh || true # Added by Docker Desktop
