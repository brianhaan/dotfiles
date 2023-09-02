#!/usr/bin/env bash
# Run this file or go line-by-line. This only works if you don't already have a gpg key set.

# Generate key. Use same name and email as in .gitconfig.
gpg --gen-key

# Get signing key for .gitconfig. If you have multiple profiles, run the first command and get the 8-digit signing key visually.
KEY=$(gpg -K --keyid-format SHORT | grep -Eo -m 1 "sec\s*\w*\/(\w{8})" | xargs | tail -c 9)

# Add to git config.
git config --global gpg.program /usr/local/bin/gpg
git config --global commit.gpgsign true
git config --global user.signingkey $KEY

# Add Config file.
mkdir -p ~/.gnupg
echo "pinentry-program /usr/local/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf
killall gpg-agent

# If you have more than one git profile, uncomment and add this to .gitconfig:
# [includeIf "gitdir:~/path/to/other/profiles/projects/"]
#   path = ~/.gitconfig-profilename

# Add these contents to .gitconfig-profilename:
# [user]
# 	email = **PROFILE EMAIL**
# 	signingkey = **SIGNING KEY**
