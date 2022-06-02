#!/bin/bash

#check if brew is installed
if ! [ -x "$(command -v brew)" ]; then
  echo "Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "brew already installed... updating and upgrading"
    brew update
fi

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
             autojump # fast directory switching
             
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

brew cleanup
