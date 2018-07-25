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

# Install Homebrew ZSH
echo "Installing Homebrew ZSH"
brew install zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set ZSH as default shell.
chsh -s $(which zsh)

# Reload ZSH
source ~/.zshrc

# Install Other Homebrew Packages
echo "Installing Other Homebrew Packages"

brew install git
brew install git-flow
brew install git-extras
brew install python     # python 3
brew install python@2   # python 2
brew install terminal-notifier
brew install thefuck

echo "Install Applications with Homebrew Cask"

brew tap caskroom/cask
brew install brew-cask-completion
brew cask install alfred
brew cask install firefox
brew cask install scroll-reverser
brew cask install spectacle
brew cask install spotify
brew cask install virtualbox
brew cask install visual-studio-code

echo "Install Binary Font files with Homebrew Cask"

brew tap caskroom/fonts
