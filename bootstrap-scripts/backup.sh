#!/bin/bash

backupDirName=dotfiles_backup_$(date +%Y%m%d%H%M%S)

echo "backing up dotfiles and config files to $backupDirName..."

mkdir -p ~/"$backupDirName"

mv ~/.zshrc ~/"$backupDirName"/zshrc
mv ~/.zprofile ~/"$backupDirName"/zprofile
mv ~/.gitconfig ~/"$backupDirName"/gitconfig
mv ~/.gitignore ~/"$backupDirName"/gitignore
