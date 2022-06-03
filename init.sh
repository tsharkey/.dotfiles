#!/bin/bash

# load .env for config
set -ae
source .env

echo "Are you sure you want to run the initial setup? (y/n)"
  read -r response
  if ! [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "Exiting..."
    exit 1
fi

pushd install-scripts > /dev/null || echo "pushd install-scripts failed... this should not happen..." && exit 1

sh ./backup.sh

sh ./requirements.sh

sh ./brew-install.sh

sh ./mas-install.sh

sh ./link.sh

sh ./macos-defaults.sh

sh ./dotfiles.sh

source ~/.zshrc



echo "Setup complete!"
