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
ensuresymlink "$DEV_DIRECTORY"/nvim-conf ~/.config/nvim

# zsh
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/zsh/.zshrc ~/.zshrc
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/zsh/.zprofile ~/.zprofile

# git
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/git/.gitconfig ~/.gitconfig
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/git/.gitignore ~/.gitignore

# omp theme
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/zsh/toosharks.omp.json ~/toosharks.omp.json

# linter configs
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/lint/.golangci.yml ~/.golangci.yml
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/lint/.pg_format ~/.pg_format 

# /Users/thomassharkey/Library/Application Support/com.mitchellh.ghostty/config
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/configs/ghostty ~/Library/Application Support/com.mitchellh.ghostty/config

printf "\e[32m✓ finished setting up symlinks\e[0m\n"
