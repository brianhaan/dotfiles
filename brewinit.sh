#!/bin/bash
brew update
brew upgrade

# Core Utilities
brew install git && brew link --overwrite git
brew install bash
brew install bash-completion

brew cleanup