#!/bin/bash

# Install nvm and let nvm install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.zprofile
nvm install stable

# Install global npm packages
npm install -g pnpm