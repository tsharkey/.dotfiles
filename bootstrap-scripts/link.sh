#!/bin/bash

# check if symlink already exists, if not create it
ensuresymlink() {
    if [ -L "$1" ]; then
        echo "Symlink already exists: $1"
    else
        ln -sf "$2" "$1"
    fi
}

# link zsh files
ensuresymlink ./zsh/.zshrc ~/.zshrc
ensuresymlink ./zsh/.zprofile ~/.zprofile

# link git files
ensuresymlink ./git/.gitconfig ~/.gitconfig
ensuresymlink ./git/.gitignore ~/.gitignore

printf "\e[32m✓ finished setting up symlinks\e[0m\n"
