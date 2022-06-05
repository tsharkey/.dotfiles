#!/bin/bash

# check if symlink already exists, if not create it
ensuresymlink() {
    if [ -L "$2" ]; then
        echo "Symlink already exists: $1"
    else
        ln -sf "$1" "$2"
    fi
}

if [ -z "$DEV_DIRECTORY" ]; then
    echo "DEV_DIRECTORY is not set"
    exit 1
fi

# link zsh files
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/zsh/.zshrc ~/.zshrc
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/zsh/.zprofile ~/.zprofile

# link git files
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/git/.gitconfig ~/.gitconfig
ensuresymlink "$DEV_DIRECTORY"/.dotfiles/git/.gitignore ~/.gitignore

printf "\e[32m✓ finished setting up symlinks\e[0m\n"
