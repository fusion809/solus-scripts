function vfs {
    vim /etc/fstab
}

alias vfb=vfs
alias vfstab=vfs

function vpc {
    if `cat /etc/os-release | grep "Arch" > /dev/null 2>&1`; then
         vim /etc/pacman.conf
    elif `cat /etc/os-release | grep "Gentoo" > /dev/null 2>&1`; then
         vim /etc/portage/repos.conf
    fi
}

function vpk {
    if [[ -f PKGBUILD ]]; then 
         vim PKGBUILD
    elif [[ -d /etc/portage ]]; then
         vim /etc/portage/package.accept_keywords
    elif [[ -f package.json ]]; then
         vim package.json
    else
         vim PKGBUILD
    fi
}

function vpm {
    if `cat /etc/os-release | grep Gentoo > /dev/null 2>&1`; then
         vim /etc/portage/package.mask
    else
         printf "This command only makes sense on Gentoo.\n"
    fi
}

function vpmc {
    if `cat /etc/os-release | grep Gentoo > /dev/null 2>&1`; then
         vim /etc/portage/make.conf
    else
         printf "This command only makes sense on Gentoo.\n"
    fi
}

function vpu {
    if `cat /etc/os-release | grep Gentoo > /dev/null 2>&1`; then
         vim /etc/portage/package.use
    else
         printf "This command only makes sense on Gentoo.\n"
    fi
}

function vsd {
    vim /etc/sddm.conf
}

function vsu {
    vim /etc/sudoers
}

function vmo {
    if `cat /etc/os-release | grep Gentoo > /dev/null 2>&1`; then
         vim /etc/conf.d/modules
    else
         printf "This command only makes sense on Gentoo.\n"
    fi
}
