#!/bin/bash
L=$(uname)
# Check the operating system type is Linux
if [ $L != "Linux" ]; then
    echo "Error: This script is meant for Linux systems only" >> linuxsetup.log
    exit 1
fi

# Create the .TRASH directory if it doesn't exist
if [ ! -d ~/.TRASH ]; then
    mkdir ~/.TRASH
fi

# Check if the .vimrc file exists and rename it if it does
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.bup vimrc
    echo "The current .vimrc file was renamed to .bup vimrc" >> linuxsetup.log
fi

# Overwrite the contents of etc/vimrc to .vimrc in the home directory
cp etc/vimrc ~/.vimrc

# Add the statement 'source ~/.dotfiles/etc/bashrc custom' to the end of the .bashrc file
echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc
