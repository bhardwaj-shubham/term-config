autoload -Uz +X compinit && compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# Bind the ctrl + arrow command
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# load zsh-syntax-highlighting
source "$HOME/.my-custom-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Load Fast Node Manager
eval "$(fnm env --use-on-cd --shell zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up zoxide
eval "$(zoxide init zsh)"

# Starship
eval "$(starship init zsh)"

alias lg='lazygit'
alias ls='eza'

