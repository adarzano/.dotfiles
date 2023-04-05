#!/bin/bash

# Remove the .vimrc file in the home directory
rm -f ~/.vimrc

# Remove the line 'surce ~/.dotfiles/etc/bashrc custom' in the .bashrc file
# sed -i 's/beep/bop/g' ~/.bashrc
sed -i 's/source \~\/\.dotfiles\/etc\/bashrc\_custom//g' ~/.bashrc
#sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc

# Remove the .TRASH directory in the home directory
rm -rf ~/.TRASH
