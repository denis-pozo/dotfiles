# Loading configuration
# [ -f ~/.exports ] && source ~/.exports
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.functions ] && source ~/.functions 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Path
path=("HOME/.jenv/bin" $path)
path=("usr/local/opt/coreutils/libexec/gnubin" $path)
path=("usr/local/opt/make/libexec/gnubin" $path)
path=("usr/local/opt/findutils/libexec/gnubin" $path)
path=("usr/local/opt/gnu-sed/libexec/gnubin" $path)
path=("usr/local/opt/grep/libexec/gnubin" $path)
path=("usr/local/opt/gnu-getopt/libexec/gnubin" $path)
export PATH
# gnu-getopt v
# m2 local
# mbr toolbox
# mbr management
# curl (brew)
# pyenv config stuff

# Locale
export LC_ALL=en_US.UTF-8

# Vim
export VISUAL=/usr/local/bin/nvim

