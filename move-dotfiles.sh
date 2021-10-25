#!/bin/bash
############################
# Moves files/directories in config to dir
############################

########## Variables

config=~/.config			  # absolute config directory
dir=~/dotfiles/configs/base/.config                    # absolute dotfiles directory
olddir=~/dotfiles/configs/base/.config-old             # absolute old dotfiles backup directory
files=""    # relative list of files/folders to move and symlink

##########

# get args

ARGS=$(getopt -a --options c:d:o --long "config:,directory:,old-directory:" -- "$@")

eval set -- "$ARGS"

while true; do
  case "$1" in
    -c|--config)
      config="$2"
      shift 2;;
    -d|--directory)
      dir="$2"
      shift 2;;
    -o|--old-directory)
      olddir="$2"
      shift 2;;
    --)
      break;;
  esac
done

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
	echo "Copying old dotfile $file to $olddir"
    	cp -r $dir/$file $olddir
    fi

    echo "Moving dotfile $file to $dir"
    mv $config/$file $dir
    echo
done

# add changes to git
cd $dir
exec git add .
