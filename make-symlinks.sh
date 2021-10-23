#!/bin/bash
############################
# Creates symlinks
############################

########## Variables

config=~/.config			  # absolute config directory
dir=~/dotfiles/.config                    # absolute dotfiles directory
olddir=~/dotfiles/.config-old		  # absolute old dotfiles backup directory

##########

# create dotfiles backup directory
if [ ! -d $olddir ]
then
    echo "Creating $olddir for backup of any existing dotfiles"
    mkdir -p $olddir
    echo "...done"
    echo
fi

# create symlinks 
for file in $dir/*; do
#      echo $file
     file=${file/$dir/""}
#      echo $file

    if [ -f $file ] || [ -d $file ]
    then
	echo "Copying old dotfile $file to $olddir"
	cp -r $dir/$file $olddir
# 	echo $dir/$file
    fi

    echo "Creating symlink to $file in $config"
#     echo $dir/$file
#     echo $config/$file
    ln -s $dir/$file $config/$file
    unlink $dir/$file/$file
    echo
done
