#!/bin/bash

# check if symlink already exists, if not create it
ensuresymlink() {
    if [ -L "$2" ] && [ -e "$1" ]; then
        echo "Symlink already exists: $1"
    else
	echo "Creating new symlink: $1"
        ln -sf "$1" "$2"
    fi
}

if [ -z "$DEV_DIRECTORY" ]; then
    echo "DEV_DIRECTORY is not set"
    exit 1
fi

# nvim
ensuresymlink "$DEV_DIRECTORY"/tsharkey/nvim-config ~/.config/nvim

# zsh
ensuresymlink "$DEV_DIRECTORY"/tsharkey/.dotfiles/zsh/.zshrc ~/.zshrc
ensuresymlink "$DEV_DIRECTORY"/tsharkey/.dotfiles/zsh/.zprofile ~/.zprofile

# git
ensuresymlink "$DEV_DIRECTORY"/tsharkey/.dotfiles/git/.gitconfig ~/.gitconfig
ensuresymlink "$DEV_DIRECTORY"/tsharkey/.dotfiles/git/.gitignore ~/.gitignore

printf "\e[32m✓ finished setting up symlinks\e[0m\n"
