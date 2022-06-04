#!/bin/bash

# link zsh files
ensuresymlink ../zsh/.zshrc ~/.zshrc
ensuresymlink ../zsh/.zprofile ~/.zprofile

# link git files
ensuresymlink ../git/.gitconfig ~/.gitconfig
ensuresymlink ../git/.gitignore ~/.gitignore
