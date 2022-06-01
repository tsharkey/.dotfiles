#!/bin/bash

brew update

brew upgrade

# install nerd font
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

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
             # applications
             iterm2 \
             google-chrome \
             slack \
             spotify \
             alfred \
             docker \
             grammarly-desktop \
             dbeaver-enterprise

brew cleanup
