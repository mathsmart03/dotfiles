#! /bin/bash

export DOTFILES = /home/rejyr/dotfiles
sh -c "export DOTFILES = /home/rejyr/dotfiles"

# install yay
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# install packages
yay -S $(cat pacman-list)
yay -S $(cat aur-list)

# install keyboard layout
cd ~
git clone https://github.com/DreymaR/BigBagKbdTrixXKB.git

# symlink configs
cd $DOTFILES
./make-symlinks.sh
