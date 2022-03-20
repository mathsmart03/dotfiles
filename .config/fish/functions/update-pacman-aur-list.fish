function update-pacman-aur-list
	pacman -Qen | awk '{print $1}' > ~/dotfiles/pacman-list
	pacman -Qm | awk '{print $1}' > ~/dotfiles/aur-list
end
