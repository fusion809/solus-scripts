function droot {
    if [[ $DISTRO == "debian" ]]; then
         genroot /deepin
    else
         genroot /debian
    fi
}

function dproot {
    genroot /deepin
}

function duroot {
    genroot /debian-unstable
}
