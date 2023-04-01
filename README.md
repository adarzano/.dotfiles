My Linux Setup

./bin/linux.sh
This script sets up my Linux environment by performing the following tasks:

Checking that the operating system is Linux.
Creating a .TRASH directory in the home directory.
Renaming any existing .vimrc file to .bup vimrc and copying the system-wide vimrc file to the home directory as .vimrc.
Adding the line source ~/.dotfiles/etc/bashrc custom to the end of the .bashrc file in the home directory.
./bin/cleanup.sh
This script reverses the changes made by the linux.sh script by performing the following tasks:

Removing the .vimrc file in the home directory.
Removing the line source ~/.dotfiles/etc/bashrc custom from the .bashrc file in the home directory.
Removing the .TRASH directory in the home directory.
./Makefile
This Makefile has two targets:

The linux target runs the linux.sh script and depends on the clean target.
The clean target runs the cleanup.sh script.
The linux target also sets execute permissions on the script files before running them.

./.vimrc
This configuration file sets up my personal preferences for the Vim text editor, such as enabling syntax highlighting and setting the tab width to 4 spaces.

./.dotfiles/etc/bashrc custom
This configuration file sets up my personal preferences for the Bash shell, such as setting the prompt and adding aliases. The linux.sh script adds a line to the end of the .bashrc file to source this file.

Overall, this repository provides a convenient way for me to set up my Linux environment with my preferred configurations and settings.
