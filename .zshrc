autoload -Uz +X compinit && compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# load zsh-syntax-highlighting
source "$HOME/.my-custom-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Starship
eval "$(starship init zsh)"

