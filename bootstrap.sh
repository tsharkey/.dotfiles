#!/bin/bash

echo "Are you sure you want to start the bootstrap process? (y/n)"
read -r response
if ! [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "Exiting..."
    exit 1
fi

pushd bootstrap-scripts &> /dev/null

sh ./backup.sh
sh ./requirements.sh
sh ./brew-install.sh
sh ./mas-install.sh
sh ./macos-defaults.sh
sh ./link.sh

source ~/.zshrc

# check if the user wants to add the scripts
echo "Do you want to add the scripts to your PATH? (y/n)"
read -r response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
  sh ./scripts.sh
fi

# set zsh to default shell
chsh -s $(which zsh)

echo "Setup complete! You might need to reload your terminal or restart your computer for all changes to take effect."
