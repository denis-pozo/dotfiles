#!/usr/bin/env bash
set -e

DOTFILES="$PWD/../home"

link () {
        echo "This utility will symlink the files in this repo to the home directory"
        echo "Proceed? (y/n)"
        read resp
        if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
                cd "$DOTFILES"
                for file in $( ls -A | grep -vE '\.exclude*|\.git$|\.gitignore|.*.md' ) ; do
                        ln -sfv "$DOTFLIES/$file" "$HOME"
                done
                echo "Symlinking complete"
                cd ..
        else
                echo "Symlinking cancelled by user"
                return 1
        fi
}

link
