# Fix dock autohide delay
defaults write com.apple.dock autohide-delay -float 0; killall Dock

# Key repeat fix
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 15

# Fix window dragging on trackpad
defaults write -g NSWindowShouldDragOnGesture -bool true
