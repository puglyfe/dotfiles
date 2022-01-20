#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install NVM for Node Version Management
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Reload ZSH
source ~/.zshrc

# Global modules to install with every version of node managed through nvm
sudo ln -s ~/.dotfiles/node/nvm_default_packages ~/.nvm/default-packages

# Install latest version of Node
nvm install node

# Set latest node as the default
nvm alias default node

# Copying whatever version of node you have active via nvm into the /usr/local/ directory
# and setting the permissions so that all users can access them.
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-with-nvm-node-version-manager-on-a-vps
# n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local

# Reload ZSH
source ~/.zshrc
