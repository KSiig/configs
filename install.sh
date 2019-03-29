#!/bin/bash

# Check what package manager is being used
if hash apt > /dev/null; then pk="apt"; fi
if hash brew > /dev/null; then pk="brew"; fi

# The script will exit on error
set -e

# Make sure system is updated
$pk update && $pk upgrade

# Install zsh
if $pk == "apt" 
then
    sudo $pk install zsh -y
elif $pk == "brew"
    $pk install zsh
fi

chsh -s $(which zsh)

sh -c "$(https://raw.githubusercontent.com/KasperSiig/oh-my-zsh/master/tools/install.sh)"'
