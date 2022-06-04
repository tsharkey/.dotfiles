# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"

# use oh-my-posh theme
eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config ~/dev/.dotfiles/themes/oh-my-posh/posh-theme.omp.json)"

# auto updates for zsh
zstyle ':omz:update' mode auto      # update automatically without asking

source ~/dev/.dotfiles/zsh/.exports
source ~/dev/.dotfiles/zsh/.alias
source ~/dev/.dotfiles/zsh/.functions

plugins=(git autojump aws docker docker-compose gh history jira lpass thefuck vscode alias-tips ssh-agent)

source $ZSH/oh-my-zsh.sh

eval $(thefuck --alias)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
