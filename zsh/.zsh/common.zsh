export ZSH="$HOME/.oh-my-zsh"

plugins=(
  fzf-tab
  zsh-autosuggestions
  fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

bindkey '^H' backward-kill-word

alias gs="git status"
alias tm="tmux"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
