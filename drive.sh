#!/bin/bash

# AWS
cp -r ~/Drive/Credentials/.aws ~

# Git
cp ~/Drive/Credentials/.git-credentials ~
cp ~/Drive/Credentials/.gitconfig* ~

# SSH
cp ~/Drive/Credentials/ssh/* ~/.ssh/
    
# Fonts
find ~/Drive/Fonts -name '*.ttf' -exec cp {} /Library/Fonts \;

# Images
cp ~/Drive/Images/frog.jpg ~/Documents/img/
cp ~/Drive/Images/swerving* ~/Documents/img/

# PDF
cp ~/Drive/Documents/blank.pdf ~/Documents/pdf/