#!/bin/bash

read -p $'\e[32mAre you sure you want to start the bootstrap process?\e[0m (y/n): ' response
if ! [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "Exiting..."
    exit 1
fi

# Set and validate DEV_DIRECTORY
if [[ -z "$DEV_DIRECTORY" || ! -d "$DEV_DIRECTORY" ]]; then
    echo "DEV_DIRECTORY is not set or is not a valid directory. Setting to ~/dev."
    export DEV_DIRECTORY="$HOME/dev"
fi

if ! mkdir -p "$DEV_DIRECTORY"; then
    echo "Failed to create DEV_DIRECTORY: $DEV_DIRECTORY"
    exit 1
fi

echo "Using DEV_DIRECTORY: $DEV_DIRECTORY"

pushd bootstrap-scripts &> /dev/null

sh ./backup.sh
sh ./requirements.sh
sh ./install.sh
sh ./macos-defaults.sh
sh ./link.sh

source ~/.zshrc

# set zsh to default shell
chsh -s $(which zsh)

printf "\U1F680 \e[32mSetup complete! You might need to reload your terminal or restart your computer for all changes to take effect.\n\e[0m!\n"
