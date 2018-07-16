function oroot {
    if [[ -d /opensuse/bin ]]; then
         genroot /opensuse
    elif [[ -d /opensuse-tumbleweed/bin ]]; then
         genroot /opensuse-tumbleweed
    elif [[ -d /ot/bin ]]; then
         genroot /ot
    elif [[ -d /opensuse-leap/bin ]]; then
         genroot /opensuse-leap
    elif [[ -d /leap ]]; then
         genroot /leap
    else
         printf "/opensuse, /opensuse-tumbleweed, /ot, /opensuse-leap and /leap do not look like distro mount points, there's no /bin dir!\n If you believe this is an error go to $HOME/Shell/common-scripts/chroot.sh and look for the oroot func.\n"
    fi
}

function olroot {
    if [[ -d /opensuse-leap/bin ]]; then
         genroot /opensuse-leap
    elif [[ -d /leap/bin ]]; then
         genroot /leap
    elif [[ -d /ol/bin ]]; then
         genroot /ol
    fi
}

function otroot {
    if [[ -d /opensuse-tumbleweed/bin ]]; then
         genroot /opensuse-tumbleweed
    elif [[ -d /tumbleweed/bin ]]; then
         genroot /tumbleweed
    elif [[ -d /ot/bin ]]; then
         genroot /ot
    fi
}

