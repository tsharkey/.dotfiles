# README.md
A collection of dotfiles and configurations to make my development environment "portable"

## Requirements
***NOTE: If any of these requirements are missing you will be prompted to install them through [requirements.sh](bootstrap-scripts/requirements.sh)***
- zsh
- brew
- oh-my-zsh

## What's going to happen?
- A handful of casks and formulas through brew
  - see [brew.sh](bootstrap-scripts/brew.sh) for the list of formulas and casks
- brew installs mas, a utility to install Mac App Store apps from the command line
  - see [mas-install.sh](bootstrap-scripts/mas-install.sh) for the list of apps installed
- Some mac os settings will be changed
  - see [macos-defaults.sh](bootstrap-scripts/macos-defaults.sh) for the list of settings that will modified
- All of the dotfiles will be symlinked to their appropriate locations
  - You can run [backup.sh](bootstrap-scripts/backup.sh) alone ahead of time to make sure everything gets saved or you can wait until prompted
- zsh setup
  - env variables
  - aliases
  - functions
  - theme
  - plugins 


## Usage
Clone this repository
```
git clone git@github.com/tsharkey/.dotfiles.git && cd .dotfiles
```

Run [bootstrap.sh](bootstrap.sh)
```
sh bootstrap.sh
```

### Optional
There is a scripts repo [here](github.com/tsharkey/scripts) that you can setup by running [scripts.sh](bootstrap-scripts/scripts.sh)


# TODO
- alfred syncing
- iterm syncing
  - iterm theme installation? or will this just get synced?
- figure out all macos settings that I have changed
- backup script
- setup automatic push
  - https://darencard.net/blog/2017-05-02-auto-git-file/
- add color
- fix gitp to support fix, patch, feat and ticket num
- echo and input on same line
- allow user to have different config



