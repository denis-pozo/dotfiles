#!/bin/bash

# User Info
git config --global user.name "Denis Pozo"
git config --global user.email "denispzpd@gmail.de"

# Aliases
git config --global alias.i init
git config --global alias.a add
git config --global alias.c 'commit -am'
git config --global alias.co checkout
git config --global alias.b branch
git config --global alias.s status
git config --global alias.ra remote add
git config --global alias.po push origin
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.lol "log --graph --decorate --pretty=oneline --abbrev-commit --all"
git config --global alias.mylog "log --pretty=format:'%h %s [%an]' --graph"
git config --global alias.list 'config --list'

touch .gitignore_global
echo "*~" >> .gitignore_global

# OS X
echo ".DS_Store" >> .gitignore_global
echo ".AppleDouble" >> .gitignore_global
echo ".LSOverride" >> .gitignore_global

# Icon must end with two \r
echo "Icon"  >> .gitignore_global


# Thumbnails
echo "._*" >> .gitignore_global

# Files that might appear in the root of a volume
echo ".DocumentRevisions-V100" >> .gitignore_global
echo ".fseventsd" >> .gitignore_global
echo ".Spotlight-V100" >> .gitignore_global
echo ".TemporaryItems" >> .gitignore_global
echo ".Trashes" >> .gitignore_global
echo ".VolumeIcon.icns" >> .gitignore_global

# Directories potentially created on remote AFP share
echo ".AppleDB" >> .gitignore_global
echo ".AppleDesktop" >> .gitignore_global
echo "Network Trash Folder" >> .gitignore_global
echo "Temporary Items" >> .gitignore_global
echo ".apdisk" >> .gitignore_global

# cache files for sublime text
echo "*.tmlanguage.cache" >> .gitignore_global
echo "*.tmPreferences.cache" >> .gitignore_global
echo "*.stTheme.cache" >> .gitignore_global

# workspace files are user-specific
echo "*.sublime-workspace" >> .gitignore_global

# project files should be checked into the repository, unless a significant
# proportion of contributors will probably not be using SublimeText
# *.sublime-project

# sftp configuration file
echo "sftp-config.json" >> .gitignore_global

# Eclipse
echo ".metadata" >> .gitignore_global
echo "bin/" >> .gitignore_global
echo "tmp/" >> .gitignore_global
echo "*.tmp" >> .gitignore_global
echo "*.bak" >> .gitignore_global
echo "*.swp" >> .gitignore_global
echo "*~.nib" >> .gitignore_global
echo "local.properties" >> .gitignore_global
echo ".settings/" >> .gitignore_global
echo ".loadpath" >> .gitignore_global

# Eclipse Core
echo ".project" >> .gitignore_global

# External tool builders
echo ".externalToolBuilders/" >> .gitignore_global

# Locally stored "Eclipse launch configurations"
echo "*.launch" >> .gitignore_global

# PyDev specific (Python IDE for Eclipse)
echo "*.pydevproject" >> .gitignore_global

# CDT-specific (C/C++ Development Tooling)
echo ".cproject" >> .gitignore_global

# JDT-specific (Eclipse Java Development Tools)
echo ".classpath" >> .gitignore_global

# Java annotation processor (APT)
echo ".factorypath" >> .gitignore_global

# PDT-specific (PHP Development Tools)
echo ".buildpath" >> .gitignore_global

# sbteclipse plugin
echo ".target" >> .gitignore_global

# Tern plugin
echo ".tern-project" >> .gitignore_global

# TeXlipse plugin
echo ".texlipse" >> .gitignore_global

# STS (Spring Tool Suite)
echo ".springBeans" >> .gitignore_global

# Intellij
echo ".idea" >> .gitignore_global
echo ".iml" >> .gitignore_global

mv .gitignore_global "$HOME"
git config --global core.excludesfile "$HOME/.gitignore_global"
