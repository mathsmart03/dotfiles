function sway_startup
    if test -z $DISPLAY 
        and test (tty) = "/dev/tty1"
        sway
    end
end