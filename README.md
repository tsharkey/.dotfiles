# README.md
A collection of dotfiles and configurations to make my development environment "portable"

## What's going to happen?
- A handful of casks and formulas through brew
  - see [brew.sh](bootstrap-scripts/brew.sh) for the list of formulas and casks
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
git clone git@github.com/tsharkey/.dotfiles.git $DEV_DIRECTORY && cd $DEV_DIRECTORY/.dotfiles
```

Run [bootstrap.sh](bootstrap.sh)
```
sh bootstrap.sh
```

## TODO
- [ ] Support auto setup for nix flakes
