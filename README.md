# dotfiles

### Fork Me

#### Before you start...

1. Change two references to "Brian Haan" and "brianchaan@gmail.com" to your own name and email
   - `.gitconfig`
   - `.npmrc`
1. Browse through each dotfile and update to your preference, especially .osx for system preferences.
1. Add or remove folders you want in folders.sh.
1. Add or remove packages you use in brewfile.sh.
1. Add or remove applications you use in caskfile.sh.
1. Replace references to LastPass with whatever password manager you use.
1. Update the drive.sh file with any files you want to include from your Google Drive, if any, otherwise ignore.

#### Dependencies to be fully automated

1. Apple ID set up
1. Google account set up and synched to Chrome and Google Drive
1. LastPass or other password manager, especially with Chrome extension
1. Github account with credentials stored on Google Drive
1. VSCode settings configured with Settings Sync connected to Github
1. AWS account with credentials stored on Google Drive
1. SSH RSA keys generated and stored on Google Drive

---

### Procedure for a brand new Mac

1. Before beginning, install any system or OS updates through the App Store.
1. Cmd+Space to open Spotlight, type _brew.sh_, and open in Safari.
   - Copy the bash command from the Homebrew website.
   - Cmd+Space and type _Terminal_ to open the default Terminal.
   - Paste the command. This will install both Homebrew and the Xcode command line tools.
   - While this command runs, follow the **Configure OS** steps in **Manual Actions** below.
1. In the Terminal, run `git clone https://github.com/brianchaan/dotfiles ~/dotfiles` to clone this repository.
1. Run `source ~/dotfiles/start.sh`. This performs the following:
   - Symlinks each dotfile to the home directory
   - Sets up directories (folders.sh)
   - Installs git and bash (brewinit.sh)
   - Updates the default shell to bash
1. Open two terminal windows.
   - In the first, run `source ~/dotfiles/one.sh`. This uses brew to install programs.
   - In the second, run `source ~/dotfiles/two.sh`. This uses brew cask to install applications.
   - As each application is installed, it will open automatically to configure. Check **Configure Applications** in **Manual Actions** below for specific steps to follow.
1. If you have Google Drive set up with your credentials or other files, run `source ~/dotfiles/drive.sh`.
   - Make sure your Google Drive files are synched before running this command.
1. Run `source ~/dotfiles/finish.sh`. This performs the following:
   - Installs node (npm.sh)
   - Configures Mac OS preferences (.osx)
1. Restart computer to apply OS Preferences.

---

### Manual Actions

#### Configure OS

1. Open LastPass.com and log in to have passwords available
1. Log in to Apple ID
   - Open and configure App Store, Messages, FaceTime
   - Download and install apps on your account
1. Add Internet Accounts
   - Open System Preferences > Internet Accounts
   - Add each account
   - Open and configure Calendar
     - Start week on Monday
     - Day starts at 7:00 AM
     - Day ends at 9:00 PM
     - Show 14 hours at a time
     - Default calendar: Google General
     - Turn off all alerts
1. Configure any external hardware (mouse, keyboard, monitor)
1. System Preferences that are difficult to set through terminal commands
   - Security & Privacy > General
     - Require password immediately after sleep or screen saver begins
   - Battery
     - Battery > Turn display off after: 30 minutes
     - Power Adapter > Turn display off after: 1 hour
   - Notifications > Do Not Disturb > Turn on Do Not Disturb:
     - Check > From: 10PM to 7AM
     - Check > When the display is sleeping
     - Check > When the screen is locked
     - Check > When mirroring to TVs and projectors
   - Users & Groups
     - Edit profile picture
   - Finder Preferences (not System Preferences)
     - Open Preferences and delete all tags
1. Configure gpg to sign git commits
   - Follow the instructions line-by-line in gpg.sh

#### Configure Applications

As each application opens,

- Apply any Privacy settings asked for
- Log in

1. iTerm2
   - Open iTerm2
   - Press Cmd+, to open Preferences
   - Go to General tab > Preferences
   - Check box _Load preferences from custom folder or URL_
   - Select `/Users/<username>/Themes`
   - Completely close (Cmd+q) and re-open iTerm2
1. Chrome
   - Configure as default browser
   - Log in
   - Enable sync
   - Sign in to LastPass extension
1. VSCode
   - Cmd+Shift+P > Settings Sync: Turn on
1. Adobe Creative Cloud
   - Log in
   - Download applications
1. Better Touch Tool
   - Allow Privacy settings
   - Load license file from Drive/Credentials
   - Downgrade to previous version to use current license
   - Preferences > Basic Settings > Launch BetterTouchTool on startup
1. Finder
   - Add bookmarks: root, home, img, pdf, screenshots, Applications, Desktop, Downloads

---

### How to generate an SSH keypair

1. Generate a pair of authentication keys: `ssh-keygen -t rsa`
1. Do not enter a passphrase and use all the defaults.
1. Append the contents of id_rsa.pub to the file ~/.ssh/authorized_keys on any server you need access to.
1. In your ~/.ssh/config file, for each host add an IdentityFile parameter:

```
Host <host>
  Hostname <hostname>
  User <user>
  IdentityFile ~/.ssh/id_rsa
```
