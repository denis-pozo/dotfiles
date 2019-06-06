#!/usr/bin/env bash

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
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

# Cask Extension
brew tap caskroom/cask

# ----------------------------------------------------
# Programming Languages and Frameworks
# ----------------------------------------------------

# Java
brew cask install java

# Python 3
brew install python

# ----------------------------------------------------
# Useful tools
# ----------------------------------------------------

# Make requests with awesome response formatting
brew install httpie

# Show directory structure with excellent formatting
brew install tree

# Heroku
brew install heroku

# Docker for containerization
brew install docker

# ---------------------------------------------
# Terminal gimmicks xD
# ---------------------------------------------

# The computer fortune teller 
brew install fortune

# The famous cowsay
brew install cowsay

# Multicolored text output
brew install lolcat

# Remove outdated versions from the cellar
brew cleanup
