#!/bin/bash
set -e
echo "=============================="
echo "Installation of bash-config..."
# Clone or update the repository
if [ ! -d "$HOME/.dotfiles" ]; then
  git clone https://github.com/fr-jk/bash-config.git "$HOME/.dotfiles"
else
  echo "Updating $HOME/.dotfiles"
  git -C "$HOME/.dotfiles" pull
fi
echo "-----"
# Create symbolic link to bash_aliases
echo "Linking bash_aliases"
ln -sf "$HOME/.dotfiles/bash_aliases" "$HOME/.bash_aliases"

echo "-----"
# Add source line to .bashrc if not already present
echo "Checking bashrc configuration"
grep -qxF '[ -f ~/.bash_aliases ] && source ~/.bash_aliases' "$HOME/.bashrc" || \
echo '[ -f ~/.bash_aliases ] && source ~/.bash_aliases' >> "$HOME/.bashrc"

echo "-----"
# Reload bash configuration
echo "Reloading shell"
. "$HOME/.bashrc" || true

echo "Installation completed"
echo "=============================="
