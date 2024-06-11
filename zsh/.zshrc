###############################################################################
## ZSH
###############################################################################
# auto updates for zsh
zstyle ':omz:update' mode auto  

plugins=(git autojump aws docker docker-compose gh history thefuck vscode ssh-agent zsh-autosuggestions)

eval $(thefuck --alias)

eval "$(oh-my-posh --config $(brew --prefix oh-my-posh)/themes/cobalt2.omp.json init zsh)"

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

###############################################################################
## Aliases
###############################################################################
# git
alias ghb="gh browse"

# zsh
alias rld="source ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# utility
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]' | xargs echo -n | pbcopy"
alias wtf="thefuck"

# vscode projects
alias df="code ~/dev/.dotfiles"
alias dev="cd $DEV_DIRECTORY"

# misc
alias joke="curl -s https://api.jokes.one/jod | jq -r '.contents.jokes[0].joke.text'"
alias chucknorris="curl -s https://api.chucknorris.io/jokes/random | jq -r '.value'"
alias dadjoke="curl -s -H \"Accept: application/json\" https://icanhazdadjoke.com/ | jq -r '.joke'"

###############################################################################
## Exports
###############################################################################
# Path to your oh-my-zsh installation.

#### GO ENV VARIABLES ####
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export DEV_DIRECTORY=$HOME/dev

# scripts
if [ -d "$DEV_DIRECTORY/scripts" ]; then
    export PATH=$PATH:$DEV_DIRECTORY/scripts
fi

source ~/dev/.secrets
