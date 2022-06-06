#!/bin/bash

# check if $DEV_DIRECTORYis set
if [ -z "$DEV_DIRECTORY" ]; then
    echo "DEV_DIRECTORY is not set, please set one"
    exit 1
fi

# clone scripts repository
git clone git@github.com:tsharkey/scripts.git $DEV_DIRECTORY/scripts

pushd $DEV_DIRECTORY/scripts

sh install.sh

popd

printf "\e[32m✓ finished adding scripts to user path\e[0m\n"
