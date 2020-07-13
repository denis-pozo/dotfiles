# Loading configuration
# [ -f ~/.exports ] && source ~/.exports
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.functions ] && source ~/.functions 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Path
path=("HOME/.jenv/bin" $path)
path=("/usr/local/opt/coreutils/libexec/gnubin" $path)
path=("/usr/local/opt/make/libexec/gnubin" $path)
path=("/usr/local/opt/findutils/libexec/gnubin" $path)
path=("/usr/local/opt/gnu-sed/libexec/gnubin" $path)
path=("/usr/local/opt/grep/libexec/gnubin" $path)
path=("/usr/local/opt/gnu-getopt/libexec/gnubin" $path)
path=("/usr/local/opt/curl/bin" $path)
path=("$HOME/development/work/toolbox/bin" $path)
path=("$HOME/development/work/bidder/bin" $path)
path=("$HOME/development/work/management/bin" $path)
path=("$HOME/development/work/broker/bin" $path)
export PATH

# Locale
export LC_ALL=en_US.UTF-8

# m2 local
# pyenv config stuff


# Vim
export VISUAL=/usr/local/bin/nvim

