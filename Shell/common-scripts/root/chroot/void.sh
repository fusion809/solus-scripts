function vroot {
    if ! [[ -f /void/bin/bash ]]; then
         mount /dev/sda11 /void
    fi

    if ! [[ -d /void/data/Programs ]]; then
         mount /dev/sdb1 /void/data
    fi
    genroot /void
}
