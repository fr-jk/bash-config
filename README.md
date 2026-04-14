# bash-config

Simple repository to manage and deploy custom Bash configuration (aliases, functions, etc.).

## Installation

### Option 1 — One-liner with install.sh script

curl -s https://raw.githubusercontent.com/fr-jk/bash-config/main/install.sh | bash

### Option 2 — Manual installation

git clone https://github.com/fr-jk/bash-config.git ~/.dotfiles
ln -sf ~/.dotfiles/bash_aliases ~/.bash_aliases
echo '[ -f ~/.bash_aliases ] && source ~/.bash_aliases' >> ~/.bashrc
source ~/.bashrc

## Structure bash-config

bash-config/
- bash_aliases 
- install.sh

## How it works

- The repository is cloned into ~/.dotfiles
- A symbolic link is created to ~/.bash_aliases
- .bashrc is updated to automatically load aliases
- The shell is reloaded

## Security

Do not store:
- passwords
- API keys
- private credentials

## License

Free to use and modify.
