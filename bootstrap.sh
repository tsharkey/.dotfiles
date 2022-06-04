#!/bin/bash

# load .env for config
set -ae
source .env

# source functions for bootstrap process
source bootstrap-scripts/.bootstrap-functions

areyousure "you want tostart the bootstrap process"

pushd bootstrap-scripts > /dev/null

sh ./backup.sh
sh ./requirements.sh
sh ./brew-install.sh
sh ./mas-install.sh
sh ./macos-defaults.sh
sh ./link.sh

source ~/.zshrc

echo "Setup complete!"
