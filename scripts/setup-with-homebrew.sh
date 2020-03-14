#!/usr/bin/env bash
set -e

echo "Checking Xcode CLI"
xcode-select --install 2>/dev/null || echo "    -> Already installed"

echo "Checking Homebrew"
if [ -f /usr/local/bin/brew ]; then
      echo "    -> Already installed"
else
      echo "Installing Homebrew"
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap Homebrew/bundle
brew update
brew bundle
brew cleanup -s
brew cask cleanup
