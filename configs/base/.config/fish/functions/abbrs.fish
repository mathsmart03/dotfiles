function abbrs
	abbr -a blctl bluetoothctl
	abbr -a cpustat 'auto-cpufreq --stats'
	abbr -a ls 'exa -F'
	abbr -a mkdir 'mkdir -p'
	abbr -a n nvim
	abbr -a nfet neofetch
	abbr -a restart reboot
	abbr -a yoinkmp3 youtube-dl -x --audio-format mp3 --prefer-ffmpeg
	# cargo
	abbr -a c cargo
	abbr -a cb 'cargo build'
	abbr -a cr 'cargo run'
	abbr -a cc 'cargo check'
	abbr -a ca 'cargo add'
	abbr -a cl clear
	# clears
	abbr -a clf 'clear; neofetch'
	abbr -a clg 'clear; fish_greeting'
	abbr -a clt 'clear; todo'
	# pacman
	abbr -a pac pacman
	abbr -a update 'yay'
	abbr -a yeet 'yay -Rsn'
	abbr -a yoink 'yay -S'
	# systemctl
	abbr -a sleep 'systemctl suspend'
	abbr -a sysdis 'systemctl disable'
	abbr -a sysen 'systemctl enable'
	abbr -a sysre 'systemctl restart'
	abbr -a systat 'systemctl status'
	abbr -a systl systemctl
	abbr -a systop 'systemctl stop'
	abbr -a systrt 'systemctl start'
	# todo
	abbr -a t todo
	abbr -a ta 'todo add'
	abbr -a td 'todo done'
	abbr -a te 'todo edit'
	abbr -a tm 'todo move'
	abbr -a tr 'todo remove'
	abbr -a ts 'todo show'
	abbr -a tsl 'todo select'
	abbr -a tud 'todo undone'
end
