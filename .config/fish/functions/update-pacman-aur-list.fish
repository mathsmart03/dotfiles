function update-pacman-aur-list
	pacman -Qqen ~/dotfiles/pacman-list
	pacman -Qqm > ~/dotfiles/aur-list
end
