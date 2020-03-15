#!/usr/bin/env bash
set -e

# sudo keep-alive, see https://gist.github.com/cowboy/3118588
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Checking Xcode CLI"
xcode-select --install 2>/dev/null || echo "    -> Already installed"

echo "Checking Homebrew"
if [ -f /usr/local/bin/brew ]; then
	echo "    -> Already installed"
else
	echo "Installing Homebrew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"/
fi

# Make sure we're using the latest Homebrew
brew update

# Install dependencies defined in ../Brewfile
brew bundle

# Post-installation cleanup
brew cleanup -s
brew cask cleanup
