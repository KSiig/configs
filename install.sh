#!/bin/bash

# Check what package manager is being used
if hash apt > /dev/null; then pk="apt"; fi
if hash brew > /dev/null; then pk="brew"; fi

# The script will exit on error
set -e

# Make sure system is updated
if $pk -eq "apt" 
then
    sudo $pk update && sudo $pk upgrade -y
elif $pk -eq "brew"
then
    $pk update && $pk upgrade
fi

# Install zsh
if $pk -eq "apt" 
then
    sudo $pk install zsh -y
elif $pk -eq "brew"
then
    $pk install zsh
fi

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/KasperSiig/oh-my-zsh/master/tools/install.sh)"'
