# Loading configuration
# [ -f ~/.exports ] && source ~/.exports
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.functions ] && source ~/.functions 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Path
path=("HOME/.jenv/bin" $path)

# Locale
export LC_ALL=en_US.UTF-8


# Vim
export VISUAL=/usr/local/bin/nvim

