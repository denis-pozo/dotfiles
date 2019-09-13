#!/bin/sh

source "$PWD/dotfiles/.exports"

# Initialize a few things
init() {
	echo "Making a project folder in $PATH_TO_WORK if it doesn't already exist"
	mkdir -p "$PATH_TO_WORK"

	echo "Making a playground folder in $PATH_TO_PLAYGROUND if it doesn't already exist"
	mkdir -p "$PATH_TO_PLAYGROUND"
}

link () {
	echo "This utility will symlink the files in this repo to the home directory"
	echo "Proceed? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
		cd "$PWD/dotfiles"
		for file in $( ls -A | grep -vE '\.exclude*|\.git$|\.gitignore|.*.md' ) ; do
			ln -sv "$PWD/$file" "$HOME"
		done
		echo "Symlinking complete"
		cd ..
	else
		echo "Symlinking cancelled by user"
		return 1
	fi
}

install_tools () {
	if [ $( echo "$OSTYPE" | grep 'darwin' ) ] ; then
		echo "This utility will install useful utilities using Homebrew"
		echo "Proceed? (y/n)"
		read resp
		if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
			echo "Installing useful stuff using brew. This may take a while..."
			sh brew.sh
		else
			echo "Brew installation cancelled by user"
		fi
	else
		echo "Skipping installations using Homebrew because MacOS was not detected..."
	fi
}

config_git () {
	echo "This utility will configure git client"
	echo "Proceed? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
		echo "Configuring your git client..."
			sh git-config.sh
		else
			echo "Git config cancelled by user"
		fi
}

echo '------------------------------------------'
init
echo '------------------------------------------'
link
echo '------------------------------------------'
install_tools
echo '------------------------------------------'
config_git
echo '------------------------------------------'
