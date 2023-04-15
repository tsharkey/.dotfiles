#!/bin/bash

# Update Homebrew and any installed formulas
brew update

# Define the list of formulas you want to install or update
casks=("iterm2" "microsoft-edge" "slack" "spotify" "docker" "grammarly-desktop" "visual-studio-code" "postman" "tiles" "zoomus" "appcleaner" "todoist" "obsidian" "raycast")
formulas=("oh-my-posh" "postgresql" "semgrep" "go" "golangci-lint" "awscli" "terraform" "tfenv" "terraform-landscape" "fig" "jq" "git" "gh" "tree" "zsh-completions" "autojump" "python3" "circleci")

# Loop through the list of formulas and install or update them as needed
for formula in "${formulas[@]}"
do
    # Check if the formula is already installed
    if brew list --versions "$formula" >/dev/null; then
        # If it's already installed, check if user wants to upgrade it
        read -p $'\e[32mDo you want to upgrade '$formula'?\e[0m (y/n): ' response
        if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
            brew upgrade "$formula"
        fi
    else
        # If it's not installed, install it
        brew install "$formula"
    fi
done

# Loop through the list of casks and install or update them as needed
for cask in "${casks[@]}"
do
    # Check if the cask is already installed or if the app is already installed in /Applications
    if brew list --cask --versions "$cask" >/dev/null || [ -d "/Applications/$cask.app" ]; then
        # If it's already installed, check if user wants to upgrade it
        read -p $'\e[32mDo you want to upgrade '$cask'?\e[0m (y/n): ' response
        if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
            brew upgrade "$cask"
        fi
    else
        # If it's not installed, install it
        brew install --cask "$cask"
    fi
done
