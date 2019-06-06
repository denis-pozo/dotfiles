#!/usr/bin/env bash

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?"-eq 0 ] ; then
	echo "Homebrew not installed. Attempting to install Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	if [ ! "$?" -eq 0 ] ; then
		echo "Something went wrong. Exiting..." && exit 1
	fi
fi

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already installed formulae
brew upgrade

# Core Utils
brew install coreutils

# ----------------------------------------------------
# Programming Languages and Frameworks
# ----------------------------------------------------

# Python 3
brew install python

# ----------------------------------------------------
# Useful tools
# ----------------------------------------------------

# Heroku
brew install heroku

# Docker for containerization
brew install docker

# Remove outdated versions from the cellar
brew cleanup
