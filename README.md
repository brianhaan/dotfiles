# dotfiles

- Install [Homebrew](https://brew.sh)
- Run `./start.sh`

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
