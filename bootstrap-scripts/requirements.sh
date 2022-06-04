#!/bin/bash

set -e

echo "Checking requirements..."

echo "Installing xcode command line tools..."
xcode-select --install

ensuremacosversion
ensurebrew
ensureomz

# set zsh to default shell
chsh -s $(which zsh)
