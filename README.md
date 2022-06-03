# README.md
A collection of dotfiles and configurations to make my development environment "portable"

## Requirements
- xcode command line tools
- macOS 11.4 or greater (Big Sur)
- zsh
- oh-my-zsh

If any of these requirements are missing you will be prompted to install them through [requirements.sh](install-scripts/requirements.sh)

## What's getting installed?
- brew (if not already installed)
- A handful of casks and formulas
  - see [brew.sh](install-scripts/brew.sh) for the list of formulas and casks
- brew installs mas, a utility to install Mac App Store apps from the command line
  - see [mas-install.sh](install-scripts/mas-install.sh) for the list of apps installed
- xcode command line tools


## Usage
Clone this repository
```
git clone git@github.com/tsharkey/.dotfiles.git
```

Run [init.sh](init.sh)
```
cd <path do this project directory>

sh init.sh
```


# TODO
- vscode syncing (this should just be done through settings sync once logged in)
- alfred syncing
- iterm syncing
  - iterm theme installation? or will this just get synced?
- gitconfig
  - global ignore
- symlinking script
- figure out all macos settings that I have changed
- backup script
- complete zshrc
- dotfiles.sh 

# Thoughts:
- consider getting dropbox, it might make it easier to sync everything from there




