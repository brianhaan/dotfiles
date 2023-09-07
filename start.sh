#!/bin/bash
git pull origin main;

# Add symlinks to dotfiles
read -p "This may overwrite existing files in your home directory. Are you sure? (y/N) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  cp $PWD/.aliases ~/.aliases
  cp $PWD/.gitconfig ~/.gitconfig
  cp $PWD/.npmrc ~/.npmrc
  cp $PWD/.zprofile ~/.zprofile
else
  exit 0;
fi;

source $PWD/folders.sh
source $PWD/npm.sh
#source $PWD/gpg.sh