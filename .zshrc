autoload -Uz +X compinit && compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# Bind the ctrl + arrow command
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# History setup
HISTFILE=$HOME/.zshistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Load zsh-syntax-highlighting
source "$HOME/.my-custom-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Load zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load Fast Node Manager
eval "$(fnm env --use-on-cd --shell zsh)"

# Set up fzf key bindings and fuzzy completion
# source <(fzf --zsh)

# Go Version Manager
# [[ -s "/c/Users/Shubham/.gvm/scripts/gvm" ]] && source "/c/Users/Shubham/.gvm/scripts/gvm"

# Set up zoxide
eval "$(zoxide init zsh)"

# Starship
eval "$(starship init zsh)"

alias lg='lazygit'
alias ls='eza --icons=always'
alias cd='z'