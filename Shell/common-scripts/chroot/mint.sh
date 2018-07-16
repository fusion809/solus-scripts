function lroot {
    if [[ -d /linuxmint ]]; then
         genroot /linuxmint
    elif [[ -d /mint ]]; then
         genroot /mint
    fi
}
