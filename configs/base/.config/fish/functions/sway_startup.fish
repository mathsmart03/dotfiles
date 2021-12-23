function sway_startup
    if test -z $DISPLAY
        and test (tty) = "/dev/pts/0" #tmux messes with tty, now is pts. TODO: maybe fix this?
        sway
    end
end
