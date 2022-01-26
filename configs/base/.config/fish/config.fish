abbrs

if status --is-interactive
    # Commands to run in interactive sessions can go here
	if ! set -q ZELLIJ
		and test ! (tty) = "/dev/tty1"
		exec zellij
	end
end

# initialize zoxide
zoxide init fish | source

sway_startup
