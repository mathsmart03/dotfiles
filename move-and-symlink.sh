#!/bin/bash
############################
# Moves files/directories in config to dir and creates symlinks
############################

########## Variables

config=~/.config			  # absolute config directory
dir=~/dotfiles/.config                    # absolute dotfiles directory
olddir=~/dotfiles/.config-old             # absolute old dotfiles backup directory
files="vivaldi"    # relative list of files/folders to move and symlink

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles"
mkdir -p $olddir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    if [ -f $file ] || [ -d $file ]
    then
	echo "Moving old dotfile $file to $olddir"
    	mv $dir/$file $olddir
    fi

    echo "Moving dotfile $file to $dir"
    mv $config/$file $dir
    echo "Creating symlink to $file in $config"
    ln -s $dir/$file $config/$file
done
