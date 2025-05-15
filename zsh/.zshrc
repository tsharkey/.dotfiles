# uncomment to profile zsh -- don't forget about the bottom line
# zmodload zsh/zprof

# homebrew
export PATH="/opt/homebrew/bin:$PATH"
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
eval "$(/opt/homebrew/bin/brew shellenv)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
export NODE_VERSION_PREFIX="v"
export NODE_VERSIONS="$HOME/.nvm/versions/node"
# This loads nvm
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
# This loads nvm bash_completion
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

export NODE_VERSIONS="$HOME/.nvm/versions/node"
export NODE_VERSION_PREFIX="v"

###############################################################################
## ZSH
###############################################################################
# auto updates for zsh
zstyle ':omz:update' mode auto  

plugins=(git autojump aws docker docker-compose gh history ssh-agent direnv)

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# eval "$(oh-my-posh --config $(brew --prefix oh-my-posh)/themes/kushal.omp.json init zsh)"
eval "$(oh-my-posh --config ~/toosharks.omp.json init zsh)"
###############################################################################
## Aliases
###############################################################################
# git
alias ghb="gh browse"

# zsh
alias rld="source ~/.zshrc"
alias ohmyzsh="cd ~.oh-my-zsh && nv"
alias zshrc="nv ~/.zshrc"

# utility
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]' | xargs echo -n | pbcopy"

# dev projects
alias df="cd ~/dev/tsharkey/.dotfiles && nv"
alias dev="cd $DEV_DIRECTORY"
alias me="cd $DEV_DIRECTORY/tsharkey"
alias pbxx="cd $DEV_DIRECTORY/promoboxx"

# Neovim/Vim
alias nv='nvim'
alias nvini='cd ~/.config/nvim && nvim'
export EDITOR='nvim'

# Exports
# GO ENV VARIABLES
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export GOPRIVATE=github.com/promoboxx/*

# misc
export COMPOSE_MENU=0
export TENV_AUTO_INSTALL=true
export TENV_ARCH=amd64
export PRETTIERD_DEFAULT_CONFIG="$HOME/.prettierrc.yml"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nix
alias nxd="nix develop github:tsharkey/.dotfiles -c $SHELL"
alias nxx="nix develop git+ssh://git@github.com/promoboxx/dev-env.git -c $SHELL"
alias nxxu="nix flake update --flake git+ssh://git@github.com/promoboxx/dev-env.git"
export NIXPKGS_ALLOW_UNFREE=1

export DEV_DIRECTORY=$HOME/dev

# scripts
if [ -d "$DEV_DIRECTORY/scripts" ]; then
    export PATH=$PATH:$DEV_DIRECTORY/scripts
fi

if [ -d "$DEV_DIRECTORY/promoboxx/pbxx-scripts" ]; then
  export PATH=$PATH:$DEV_DIRECTORY/promoboxx/pbxx-scripts
fi

if [ -d "$DEV_DIRECTORY/tsharkey/private-scripts" ]; then
    export PATH=$PATH:$DEV_DIRECTORY/tsharkey/private-scripts
fi

if [ -f ~/dev/.secrets ]; then
  source ~/dev/.secrets
fi

# uncomment to profile zsh -- don't forget about the top line
# zprof
