# uncomment to profile zsh -- don't forget about the bottom line
# zmodload zsh/zprof

###############################################################################
## ZSH
###############################################################################
# auto updates for zsh
zstyle ':omz:update' mode auto  

plugins=(git autojump aws docker docker-compose gh history thefuck vscode ssh-agent zsh-autosuggestions)

eval $(thefuck --alias)

eval "$(oh-my-posh --config $(brew --prefix oh-my-posh)/themes/night-owl.omp.json init zsh)"

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

###############################################################################
## Aliases
###############################################################################
# git
alias ghb="gh browse"

# zsh
alias rld="source ~/.zshrc"
alias ohmyzsh="cd ~.oh-my-zsh && nv"
alias scrt="nv ~/dev/.secrets"
alias zshrc="nv ~/.zshrc"

# utility
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]' | xargs echo -n | pbcopy"
alias wtf="thefuck"

# dev projects
alias df="cd ~/dev/tsharkey/.dotfiles && nv"
alias dev="cd $DEV_DIRECTORY"
alias me="cd $DEV_DIRECTORY/tsharkey"
alias pbxx="cd $DEV_DIRECTORY/promoboxx"

# misc
alias joke="curl -s https://api.jokes.one/jod | jq -r '.contents.jokes[0].joke.text'"
alias chucknorris="curl -s https://api.chucknorris.io/jokes/random | jq -r '.value'"
alias dadjoke="curl -s -H \"Accept: application/json\" https://icanhazdadjoke.com/ | jq -r '.joke'"


###############################################################################
## Neovim/Vim
###############################################################################
alias vim='nvim'
alias nv='nvim'
alias nvini='cd ~/.config/nvim && nvim'
export EDITOR='nvim'

###############################################################################
## Exports
###############################################################################
#### GO ENV VARIABLES ####
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

###############################################################################
## rbenv
###############################################################################
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export DEV_DIRECTORY=$HOME/dev

# scripts
if [ -d "$DEV_DIRECTORY/scripts" ]; then
    export PATH=$PATH:$DEV_DIRECTORY/scripts
fi

source ~/dev/.secrets

# uncomment to profile zsh -- don't forget about the top line
# zprof
