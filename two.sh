#!/bin/bash
brew update
brew upgrade

# Casks
brew install --cask bitwarden
brew install --cask protonvpn
brew install --cask arc
brew install --cask google-chrome
brew install --cask firefox
brew install --cask brave-browser
brew install --cask slack
brew install --cask notion
brew install --cask webstorm
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask insomnia
brew install --cask figma
brew install --cask docker
brew install --cask quicken
brew install --cask spotify
brew install --cask discord
brew install --cask zoom
brew install --cask kindle
brew install --cask vlc
brew install --cask clockify
brew install --cask logi-options-plus

# Finish
brew cleanup
