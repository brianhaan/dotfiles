#!/bin/bash
git pull origin main;

### Copy dotfiles
read -p "This may overwrite existing files in your home directory. Are you sure? (y/N) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  cp $PWD/dotfiles/* ~/
else
  exit 0;
fi;

### Directories
mkdir -p ~/Code/clients
mkdir -p ~/Code/experiments
mkdir -p ~/Code/examples
mkdir -p ~/.ssh
chmod 755 ~/.ssh

# SSH Key
cp ~/Documents/Credentials/ssh/* ~/.ssh/

### Brew
sh packages/brew.sh

### Install NodeJS
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
source ~/.zprofile
nvm install lts/*
nvm alias default lts/*
nvm use default

# Install global node packages
sh packages/node.sh

### Install Python
# pyenv install 3.13.3

### Post-install
# sh packages/brew-cask.sh
# sh reference/.osx
# sh reference/gpg.sh
