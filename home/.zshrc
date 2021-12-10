# Loading configuration
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.functions ] && source ~/.functions 

# Antibody plugins manager (static loading)
# Update plugins with antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
source ~/.zsh_plugins.sh

# Path
path=("HOME/.jenv/bin" $path)
path=("/usr/local/opt/gnu-getopt/bin" $path)
path=("/usr/local/opt/coreutils/libexec/gnubin" $path)
path=("/usr/local/opt/make/libexec/gnubin" $path)
path=("/usr/local/opt/findutils/libexec/gnubin" $path)
path=("/usr/local/opt/gnu-sed/libexec/gnubin" $path)
path=("/usr/local/opt/grep/libexec/gnubin" $path)
path=("/usr/local/opt/curl/bin" $path)
path=("/usr/local/opt/sqlite/bin" $path)
path=("/usr/local/sbin" $path)
path=("$HOME/development/work/toolbox/bin" $path)
path=("$HOME/development/work/bidder/bin" $path)
path=("$HOME/development/work/management/bin" $path)
path=("$HOME/development/work/broker/bin" $path)
export PATH

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
export VISUAL=/usr/local/bin/nvim
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# starship prompt
eval "$(starship init zsh)"

# Zsh autocompletion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Tmux colors
export TERM="xterm-256color"

# Node
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" 

# Local IP for live servers
export LOCAL_IP=`ipconfig getifaddr en0`

# Pyenv
export PYTHON_CONFIGURE_OPTS="--enable-framework"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# Jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
