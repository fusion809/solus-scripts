function groot {
    if ! [[ -f /gentoo/bin/bash ]]; then
         mount /dev/sda4 /gentoo
    fi

    if ! [[ -d /gentoo/data/Programs ]]; then
         mount /dev/sdb1 /gentoo/data
    fi
    genroot /gentoo
}
