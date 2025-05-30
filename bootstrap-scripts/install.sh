#!/bin/bash

# Update Homebrew and any installed formulas
brew update

# Define the list of formulas you want to install or update
casks=("firefox" "google-chrome" "slack" "spotify" "docker" "postman" "zoom" "appcleaner" "todoist" "obsidian" "ghostty" "logi-options+", "alt-tab")
formulas=("neovim" "oh-my-posh" "semgrep" "awscli" "jq" "git" "gh" "tree" "autojump" "circleci" "node" "nvm" "direnv" "mkcert" "pgformatter" "ripgrep" "rbenv")

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

# install a nerd font
oh-my-posh font install FantasqueSansMono

# clone repos
git clone git@github.com:tsharkey/nvim-conf.git "$DEV_DIRECTORY/"
git clone git@github.com:tsharkey/scripts.git "$DEV_DIRECTORY/"

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# nix
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)
