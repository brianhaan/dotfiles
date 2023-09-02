#!/bin/bash
brew update
brew upgrade

# Taps
brew tap aws/tap
brew tap mongodb/brew

# Core Utilities
brew install wget
brew install ack
brew install nmap
brew install vim

# Development Tools
brew install nginx
brew install awscli
brew install aws-sam-cli
brew install docker
brew install docker-compose
brew install gh
brew install imagemagick
brew install graphicsmagick
brew install ngrok
brew install gpg pinentry-mac

# Databases
brew install mysql
brew install mongodb-community@5.0
brew install redis

# Finish
brew cleanup
