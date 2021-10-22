#!/bin/bash
############################
# Moves files/directories in config to dir and creates symlinks
############################
exec ./move-dotfiles.sh
exec ./make-symlinks.sh
