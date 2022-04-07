#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Reload ZSH
source ~/.zshrc

# Install Other Homebrew Packages
echo "Installing Other Homebrew Packages"

brew install git
brew install git-extras
brew install jq
brew install terminal-notifier
brew install thefuck
brew install yarn

echo "Install Applications with Homebrew Cask"

brew tap homebrew/cask-cask
brew install brew-cask-completion
brew install --cask alfred
# brew install --cask backblaze
# brew install --cask bettertouchtool
# brew install --cask dropbox
brew install --cask firefox
# brew install --cask fl-studio
# brew install --cask google-chrome
# brew install --cask kap
brew install --cask rectangle
# brew install --cask slack
brew install --cask spotify
brew install --cask sourcetree
brew install --cask visual-studio-code
