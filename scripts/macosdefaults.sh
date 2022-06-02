#!/bin/bash

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Make scroll direction natural
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# TODO: Scroll Direction

