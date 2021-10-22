#!/bin/bash
############################
# Moves files/directories in config to dir
############################

########## Variables

config=~/.config			  # absolute config directory
dir=~/dotfiles/.config                    # absolute dotfiles directory
olddir=~/dotfiles/.config-old             # absolute old dotfiles backup directory
files="vivaldi"    # relative list of files/folders to move and symlink

##########

# create dotfiles_old in homedir
if [ ! -d $olddir ]
then
    echo "Creating $olddir for backup of any existing dotfiles"
    mkdir -p $olddir
    echo "...done"
fi

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    if [ -f $file ] || [ -d $file ]
    then
	echo "Moving old dotfile $file to $olddir"
    	mv $dir/$file $olddir
    fi

    echo "Moving dotfile $file to $dir"
    mv $config/$file $dir
    echo "Adding dotfile $file to git"
    cd $dir
    exec git add $file
done
