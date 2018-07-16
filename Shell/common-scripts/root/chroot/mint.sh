function lroot {
    if [[ -d /linuxmint/bin ]]; then
         genroot /linuxmint
    elif [[ -d /mint/bin ]]; then
         genroot /mint
    fi
}
