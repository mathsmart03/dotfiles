#!/bin/bash
############################
# Creates symlinks
############################

########## Variables

config=~/.config/			  # absolute config directory
dir=~/dotfiles/.config/                   # absolute dotfiles directory
olddir=~/dotfiles.config-old/		  # absolute old dotfiles backup directory

##########

# create dotfiles backup directory
if [ ! -d $olddir ]
then
    echo "Creating $olddir for backup of any existing dotfiles"
    mkdir -p $olddir
    echo "...done"
fi

# create symlinks 
for file in $dir/*; do
    file=${file/$dir/""}

    if [ -f $file ] || [ -d $file ]
	then
	echo "Copying old dotfile $file to $olddir"
	cp -r $dir$file $olddir
    fi

    echo "Creating symlink to $file in $config"
    ln -s $dir$file $config/$file
done
