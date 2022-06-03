#!/bin/bash

echo "Are you sure that you want to modify your macOS settings? (y/n)"
  read -r response
  if ! [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "Exiting..."
    exit 1
fi

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Set the scroll direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

