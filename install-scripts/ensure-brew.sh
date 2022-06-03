#!/bin/bash

set -e

echo "Checking if brew is installed..."

# check if brew is installed
if ! [ -x "$(command -v brew)" ]; then
  echo "brew not installed... would you like to install it now? (y/n)"
  read -r response
  if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "installing brew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    echo "brew not installed"
    exit 1
  fi
else
    echo "brew already installed... updating"
    brew update
fi
