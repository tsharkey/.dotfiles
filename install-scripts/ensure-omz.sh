#!/bin/bash

set -e

echo "Checking for oh-my-zsh..."

# check if oh my zsh is installed
if ! [ -d ~/.oh-my-zsh ]; then
  echo "oh my zsh not installed... would you like to install it now? (y/n)"
  read -r response
  if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "installing oh my zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  else
    echo "oh my zsh not installed"
    exit 1
  fi
else
    echo "oh my zsh already installed... updating"
    if ! pushd ~/.oh-my-zsh &> /dev/null && git pull && popd &> /dev/null; then
        echo "oh my zsh update failed, this is okay but should be updated when possible"
        exit 0
    fi
fi
