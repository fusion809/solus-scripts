function vroot {
    if ! [[ -f /void/bin/bash ]]; then
         sudo mount /dev/sda11 /void
    fi

    if ! [[ -d /void/data/Programs ]]; then
         sudo mount /dev/sdb1 /void/data
    fi
    genroot /void
}
