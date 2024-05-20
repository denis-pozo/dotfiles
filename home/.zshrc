# Powerlevel10k - for a cool prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source  $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Loading ssp-core config
source $HOME/development/default-profile/zsh_profile

# zsh - autosuggestions & highlighting
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Vi modes for command line
bindkey -v
bindkey 'jk' vi-cmd-mode 
export KEYTIMEOUT=100
autoload -U edit-command-line
bindkey -M vicmd v edit-command-line

export VISUAL=/opt/homebrew/bin/nvim
export EDITOR="$VISUAL"

# History setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZe=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# fzf -- Load fuzzy search
eval "$(fzf --zsh)"

# fzf -- theme
fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"

# Loading aliases
[ -f $HOME/.aliases ] && source $HOME/.aliases
[ -f $HOME/.functions ] && source $HOME/.functions
