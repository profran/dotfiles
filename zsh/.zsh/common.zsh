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

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
