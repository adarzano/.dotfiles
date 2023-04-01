#!/bin/bash

# Remove the .vimrc file in the home directory
rm ~/.vimrc

# Remove the line 'surce ~/.dotfiles/etc/bashrc custom' in the .bashrc file
sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc

# Remove the .TRASH directory in the home directory
rm -r ~/".TRASH"o
