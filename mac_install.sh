#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc vim tmux.conf gitconfig zshrc"

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv -v ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -sv $dir/$file-mac ~/.$file
done
