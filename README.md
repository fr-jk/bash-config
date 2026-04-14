# bash-config

Simple repository to manage and deploy custom Bash configuration (aliases, functions, etc...).

## Prerequisites

Distribution Linux Debian.

Make sure Git is installed on your Linux system :
```bash
git --version
apt update && apt install -y git
```
## Structure

bash-config/
- bash_aliases 
- install.sh
- README.md


## Installation

### Option 1 - Automatic installation

On a Linux server, run :
```bash
curl -s https://raw.githubusercontent.com/fr-jk/bash-config/main/install.sh | bash
```
### Option 2 - Manual installation

On a Linux server, run :
```bash
git clone https://github.com/fr-jk/bash-config.git ~/.dotfiles
ln -sf ~/.dotfiles/bash_aliases ~/.bash_aliases
echo '[ -f ~/.bash_aliases ] && source ~/.bash_aliases' >> ~/.bashrc
source ~/.bashrc
```

## How it works

- The repository is cloned into ~/.dotfiles
- A symbolic link is created to ~/.bash_aliases
- .bashrc is updated to automatically load aliases
- The shell is reloaded

## Security

Do not store :
- passwords
- API keys
- private credentials

## License

Free to use and modify.
