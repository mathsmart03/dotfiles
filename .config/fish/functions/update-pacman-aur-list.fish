function update-pacman-aur-list
	pacman -Qqen > $DOTFILES/pacman-list
	pacman -Qqm > $DOTFILES/aur-list
end
