#!/bin/bash
############################
# Creates symlinks
############################

########## Variables

config=~/.config			  # absolute config directory
dir=~/dotfiles/.config                    # absolute dotfiles directory
olddir=~/dotfiles.config-old		  # absolute old dotfiles backup directory

##########

# create dotfiles backup directory
if [ ! -d $olddir ]
then
    echo "Creating $olddir for backup of any existing dotfiles"
    mkdir -p $olddir
    echo "...done"
fi

# create symlinks 
for file in $config/*; do
    if [ -f $file ] || [ -d $file ]
    then
	echo "Moving old dotfile $file to $olddir"
	mv $dir/$file $olddir
    fi

    echo "Creating symlink to $file in $config"
    ln -s $dir/$file $config/$file
done
