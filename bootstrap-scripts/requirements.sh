#!/bin/bash

set -e

###############################################################################
#
# Functions
#
###############################################################################

# ensure oh-my-zsh is installed
ensureomz() {
    echo "checking for oh-my-zsh..."

    if ! [ -d ~/.oh-my-zsh ]; then
        printf "\e[31m✗ oh-my-zsh not installed... installing now\e[0m\n"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi

    # print green checkmark
    printf "\e[32m✓ oh-my-zsh installed\e[0m\n"
}

# ensure brew is intalled
ensurebrew() {
    echo "checking if brew is installed..."

    if ! [ -x "$(command -v brew)" ]; then
        printf "\e[31m✗ brew not installed... installing now\e[0m\n"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    printf "\e[32m✓ brew installed\e[0m\n"
}

ensurexcodetools() {
    echo "checking if xcode tools are installed..."

    if ! [ -x "$(command -v xcode-select)" ]; then
                printf "\e[31m✗ xcode-tools not installed... installing now\e[0m\n"
        xcode-select --install
    fi

    printf "\e[32m✓ xcode tools installed\e[0m\n"
}

###############################################################################



# begin script
echo "checking requirements..."

ensurexcodetools
ensurebrew
ensureomz

printf "\e[32m✓ finished setting up dependencies\e[0m\n"
