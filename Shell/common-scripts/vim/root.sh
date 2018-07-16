function vfs {
    sudo vim /etc/fstab
}

function vpc {
    if `cat /etc/os-release | grep "Arch" > /dev/null 2>&1`; then
         sudo vim /etc/pacman.conf
    elif `cat /etc/os-release | grep "Gentoo" > /dev/null 2>&1`; then
         sudo vim /etc/portage/repos.conf
    fi
}

function vpk {
    if [[ -f PKGBUILD ]]; then 
         vim PKGBUILD
    elif [[ -d /etc/portage ]]; then
         sudo vim /etc/portage/package.accept_keywords
    elif [[ -f package.json ]]; then
         vim package.json
    else
         vim PKGBUILD
    fi
}

function vpm {
    sudo vim /etc/portage/package.mask
}

function vpmc {
    sudo vim /etc/portage/make.conf
}

function vpu {
    sudo vim /etc/portage/package.use
}

function vsd {
    sudo vim /etc/sddm.conf
}

function vsu {
    sudo vim /etc/sudoers
}

function vmo {
    sudo vim /etc/conf.d/modules
}
