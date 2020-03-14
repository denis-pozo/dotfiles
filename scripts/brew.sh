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
brew cask install adoptopenjdk

# Python 3
brew install python

# Maven
brew install maven

# ----------------------------------------------------
# Useful tools
# ----------------------------------------------------

# System monitor
brew install htop

# Too Long Don't Read
brew install tldr

# JSON processor
brew install jq

# Disk Utiliy
brew install ncduo

# ToDo list built for the command-line
brew install task

# Terminal multiplexer
brew install tmux

# Text editor
brew cask install sublime-text

# Make requests with awesome response formatting
brew install httpie

# Show directory structure with excellent formatting
brew install tree

# TODO fix this
# Heroku
# brew install heroku

# Docker for containerization
brew install docker

# Unrar tool
brew install unrar

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
