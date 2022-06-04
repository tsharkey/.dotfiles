#!/bin/bash

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Set the scroll direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# set darkmode
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"
