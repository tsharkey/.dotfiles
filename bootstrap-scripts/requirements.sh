#!/bin/bash

set -e

###############################################################################
#
# Functions
#
###############################################################################

# ensure oh-my-zsh is installed
ensureomz() {
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
        return 1
    fi
    else
        echo "oh my zsh already installed... updating"
        if ! pushd ~/.oh-my-zsh &> /dev/null && git pull && popd &> /dev/null; then
            echo "oh my zsh update failed"
            return 1
        fi
    fi
}

# ensure brew is intalled
ensurebrew() {
    echo "Checking if brew is installed..."

    if ! [ -x "$(command -v brew)" ]; then
    echo "brew not installed... would you like to install it now? (y/n)"
    read -r response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
        echo "installing brew..."
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        echo "brew not installed"
        return 1
    fi
    else
        echo "brew already installed... updating"
        brew update
    fi
}

ensurexcodetools() {
    echo "Checking if xcode tools are installed..."

    if ! [ -x "$(command -v xcode-select)" ]; then
    echo "xcode tools not installed... would you like to install it now? (y/n)"
    read -r response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
        echo "installing xcode tools..."
        xcode-select --install
    else
        echo "xcode tools not installed"
        return 1
    fi
    else
        echo "xcode tools already installed"
    fi
}

###############################################################################



# begin script
echo "Checking requirements..."

ensurexcodetools
ensurebrew
ensureomz
