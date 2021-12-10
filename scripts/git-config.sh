#!/usr/bin/env bash
set -e

# User Info
git config --global user.name "Denis Pozo"
git config --global user.email "denispzpd@gmail.com"

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

echo "# OS X" >> .gitignore_global
echo ".DS_Store" >> .gitignore_global
echo ".AppleDouble" >> .gitignore_global
echo ".LSOverride" >> .gitignore_global

echo "# Thumbnails" >> .gitignore_global
echo "._*" >> .gitignore_global

echo "# Files that might appear in the root of a volume" >> .gitignore_global
echo ".DocumentRevisions-V100" >> .gitignore_global
echo ".fseventsd" >> .gitignore_global
echo ".Spotlight-V100" >> .gitignore_global
echo ".TemporaryItems" >> .gitignore_global
echo ".Trashes" >> .gitignore_global
echo ".VolumeIcon.icns" >> .gitignore_global

echo "# Directories potentially created on remote AFP share" >> .gitignore_global
echo ".AppleDB" >> .gitignore_global
echo ".AppleDesktop" >> .gitignore_global
echo "Network Trash Folder" >> .gitignore_global
echo "Temporary Items" >> .gitignore_global
echo ".apdisk" >> .gitignore_global

echo "# cache files for sublime text" >> .gitignore_global
echo "*.tmlanguage.cache" >> .gitignore_global
echo "*.tmPreferences.cache" >> .gitignore_global
echo "*.stTheme.cache" >> .gitignore_global

echo "# workspace files are user-specific" >> .gitignore_global
echo "*.sublime-workspace" >> .gitignore_global

echo "# sftp configuration file" >> .gitignore_global
echo "sftp-config.json" >> .gitignore_global

echo "# Eclipse" >> .gitignore_global
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

echo "# Eclipse Core" >> .gitignore_global
echo ".project" >> .gitignore_global

echo "# External tool builders">> .gitignore_global
echo ".externalToolBuilders/" >> .gitignore_global

echo "# Locally stored 'Eclipse launch configurations'" >> .gitignore_global
echo "*.launch" >> .gitignore_global

echo "# PyDev specific (Python IDE for Eclipse)">> .gitignore_global
echo "*.pydevproject" >> .gitignore_global

echo "# CDT-specific (C/C++ Development Tooling)" >> .gitignore_global
echo ".cproject" >> .gitignore_global

echo "# JDT-specific (Eclipse Java Development Tools)" >> .gitignore_global
echo ".classpath" >> .gitignore_global

echo "# Java annotation processor (APT)" >> .gitignore_global
echo ".factorypath" >> .gitignore_global

echo "# PDT-specific (PHP Development Tools)" >> .gitignore_global
echo ".buildpath" >> .gitignore_global

echo "# sbteclipse plugin" >> .gitignore_global
echo ".target" >> .gitignore_global

echo "# Tern plugin" >> .gitignore_global
echo ".tern-project" >> .gitignore_global

echo "# TeXlipse plugin" >> .gitignore_global
echo ".texlipse" >> .gitignore_global

echo "# STS (Spring Tool Suite)" >> .gitignore_global
echo ".springBeans" >> .gitignore_global

echo "# Intellij" >> .gitignore_global 
echo ".idea" >> .gitignore_global
echo ".iml" >> .gitignore_global

mv .gitignore_global "$HOME"
git config --global core.excludesfile "$HOME/.gitignore_global"
