# README.md
A collection of dotfiles and configurations to make my development environment "portable"

## Requirements
***NOTE: If any of these requirements are missing you will be prompted to install them through [requirements.sh](bootstrap-scripts/requirements.sh)***
- zsh
- brew
- oh-my-zsh

***Note: The scripts assume that you will use the already set $DEV_DIRECTORY in [.exports](zsh/.exports) if you would like change it then please do so beforehand***

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

### Planning Ahead
This process will wipe out any existing settings for iterm2 and Alfred. If you would like to save them as part of the backup process see these guide for how to do that

#### Iterm2
You can choose where to save your iterm2 settings [here](https://gitlab.com/gnachman/iterm2/-/wikis/back-up-preferences)

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
- backup script
  - alfred and iterm settings
- setup automatic push
  - https://darencard.net/blog/2017-05-02-auto-git-file/
- allow user to have different config
- lint and format, maybe add that to the repo?
  - shellcheck files
  - all of my lint configs would be useful
- Figure out how to store things and fetch them from scripts. Like a github access token

## Config setup
- dev directory
