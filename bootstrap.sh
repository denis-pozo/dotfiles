#!/usr/bin/env bash

init_dev () {
	echo "Making custom folder structure for development."
	echo "Proceed? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
		sh scripts/initialize-dev-folders.sh
	else
		echo "Init ~/development cancelled by the user"
	fi
}

install_brew () {
	echo "Installing Homebrew and applications"
	echo "Proceed? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
		sh scripts/install-homebrew.sh
	else
		echo "Installing brew and applications cancelled by the user"
	fi
}

config_git () {
	echo "This utility will configure git client"
	echo "Proceed? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
		echo "Configuring your git client..."
		sh scripts/git-config.sh
	else
		echo "Git config cancelled by user"
	fi
}

# Create the following folders at $HOME: 
# development/playground &development/work
init_dev

# Install homebrew and all dependencies defined in Brewfile
install_brew

# Symlink dotfiles files stored at ./home in $HOME
echo "Symlinking ./dotfiles/* at $HOME directory"
stow home

# Config git global
config_git
