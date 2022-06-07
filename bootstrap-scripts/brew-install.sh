#!/bin/bash

set -e

# install nerd font, a nerd font is required for oh-my-posh to work
echo "installing fonts..."
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

printf "\e[32m✓ fonts installed\e[0m\n"

echo "installing formulas..."
# install all my tools
brew install mas \ # Mac App Store
             jandedobbeleer/oh-my-posh/oh-my-posh \ # zsh themes
             # db
             postgresql \
             # static-analysis
             semgrep \
             # go
             go \
             golangci-lint \ # static analysis
             goenv \ # go version manager
             # cli tools
             awscli \
             terraform \
             tfenv \ # terraform env manager
             terraform-landscape \ # pretty terraform output
             fig \ # Fig provides an autocompletion dropdown
             jq \
             git \
             gh \ # github cli
             tree \ # directory tree view
             zsh-completions \
             autojump \ # fast directory switching
             python3 # python3

printf "\e[32m✓ formulas installed\e[0m\n"

echo "installing casks..."

# Install apps separately because if they are already installed
# they will stop the install chain
brew install --cask iterm2
brew install --cask google-chrome 
brew install --cask slack 
brew install --cask spotify 
brew install --cask alfred 
brew install --cask docker 
brew install --cask grammarly-desktop 
brew install --cask dbeaver-enterprise
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask tiles
brew install --cask fantastical
brew install --cask zoomus
brew install --cask appcleaner
brew install --cask setapp

printf "\e[32m✓ casks installed\e[0m\n"
echo "cleaning up"
brew cleanup

printf "\e[32m✓ brew setup completed\e[0m\n"
