# 1. Load Common logic first
if [[ -f ~/.zsh/common.zsh ]]; then
    source ~/.zsh/common.zsh
fi

# 2. Load OS-specific logic
case "$(uname -s)" in
    Darwin)
        [[ -f ~/.zsh/macos.zsh ]] && source ~/.zsh/macos.zsh
        ;;
    Linux)
        [[ -f ~/.zsh/linux.zsh ]] && source ~/.zsh/linux.zsh
        ;;
esac