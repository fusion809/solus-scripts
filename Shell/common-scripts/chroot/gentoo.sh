function groot {
    if ! [[ -f /gentoo/bin/bash ]]; then
         sudo mount /dev/sda4 /gentoo
    fi

    if ! [[ -d /gentoo/data/Programs ]]; then
         sudo mount /dev/sdb1 /gentoo/data
    fi
    genroot /gentoo
}
