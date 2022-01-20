# OSX Dotfiles

Setup, software installation and dotfiles for OSX.

## Install [Homebrew](http://brew.sh/)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install Homebrew Packages and Casks

```sh
cd ~/.dotfiles
./brew/install.sh
```

## Run additional install scripts

```sh
./zsh/install.sh
./git/install.sh
./node/install.sh
./vscode/install.sh
```

## Heavily influenced by the following .dotfiles projects

- [Dennis Evert](https://github.com/devert/dotfiles-osx)
