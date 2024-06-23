#!/bin/bash

read -p $'\e[32mAre you sure you want to start the bootstrap process?\e[0m (y/n): ' response
if ! [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "Exiting..."
    exit 1
fi

pushd bootstrap-scripts &> /dev/null

sh ./backup.sh
sh ./requirements.sh
sh ./install.sh
sh ./macos-defaults.sh
sh ./nvim.sh
sh ./link.sh

source ~/.zshrc

# check if the user wants to add the scripts
read -p $'\e[32mDo you want to add the scripts to your PATH?\e[0m (y/n): ' response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
  sh ./scripts.sh
fi

# set zsh to default shell
chsh -s $(which zsh)

printf "\U1F680 \e[32mSetup complete! You might need to reload your terminal or restart your computer for all changes to take effect.\n\e[0m!\n"
