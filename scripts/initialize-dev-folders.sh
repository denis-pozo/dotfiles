#!/usr/bin/env bash
set -e

export PATH_TO_WORK="$HOME/development/work"
export PATH_TO_PLAYGROUND="$HOME/development/playground"

create_dev() {
        echo "Making a project folder in $PATH_TO_WORK if it doesn't already exist"
        mkdir -p "$PATH_TO_WORK"

        echo "Making a playground folder in $PATH_TO_PLAYGROUND if it doesn't already exist"
        mkdir -p "$PATH_TO_PLAYGROUND"
}

echo "Creating development folder structure..."
create_dev
