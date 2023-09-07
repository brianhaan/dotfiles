#!/bin/bash
# Run this file or go line-by-line. This only works if you don't already have a gpg key set.

# Generate key. Use same name and email as in .gitconfig.
gpg --gen-key

# Get signing key for .gitconfig. If you have multiple profiles, run the first command and get the 8-digit signing key visually.
KEY=$(gpg -K --keyid-format SHORT | grep -Eo -m 1 "sec\s*\w*\/(\w{8})" | xargs | tail -c 9)

# Add to git config.
git config --global gpg.program /opt/homebrew/bin/gpg
git config --global commit.gpgsign true
git config --global user.signingkey $KEY

# Add Config file.
mkdir -p ~/.gnupg
echo "pinentry-program /opt/homebrew/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf
killall gpg-agent
