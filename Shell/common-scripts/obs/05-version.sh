# come short for commit extraction (from spec files)
function come {
    cat $OBSH/$1/$1.spec | grep "define commit" | cut -d ' ' -f 3
}

# extra commit from git log
function loge {
    git log | head -n 1 | cut -d ' ' -f 2
}

# Extra version from PKGBUILD
function verpe {
    sed -n 's/pkgver=//p' $OBSH/$1/PKGBUILD
}

# Extra version from spec/PKGBUILD file
function vere {
    if ! [[ -n $2 ]]; then
         if [[ -f $OBSH/$1/$1.spec ]]; then
              cat $OBSH/$1/$1.spec | grep "Version:" | sed 's/Version:\s*//g'
         elif [[ -f $OBSH/$1/PKGBUILD ]]; then
              verpe $1
         elif [[ -f $OBSH/$1/debian.dsc ]]; then
              cat $OBSH/$1/debian.dsc | grep "^Version" | sed 's/Version:\s*//g'
         else
              printf "Can't find a $OBSH/$1/$1.spec, or $OBSH/$1/PKGBUILD, or $OBSH/$1/debian.dsc, are you sure you have the right function, or the right number of arguments?\n A second input can be used to specify a spec file that is not named the same as its directory.\n" 
         fi
    else
        if [[ -f $OBSH/$1/$2.spec ]]; then
              cat $OBSH/$1/$2.spec | grep "Version:" | sed 's/Version:\s*//g'
        fi
    fi
}

# Get version from GitHub repository, this assumes the repo name and owner name are identical
function verg {
    if ! [[ -n $2 ]]; then
         if `which wget > /dev/null 2>&1`; then
              wget -cqO- https://github.com/$1/$1/releases | grep "tar\.gz" | cut -d '/' -f 5 | cut -d '"' -f 1 | sed 's/\.tar\.gz//g' | head -n 1
         elif `which curl > /dev/null 2>&1`; then
              curl -sL https://github.com/$1/$1/releases | grep "tar\.gz" | cut -d  '/' -f 5 | cut -d '"' -f 1 | sed 's/\.tar\.gz//g' | head -n 1
         fi
    else
         if `which wget > /dev/null 2>&1`; then
              wget -cqO- https://github.com/$1/$2/releases | grep "tar\.gz" | cut -d '/' -f 5 | cut -d '"' -f 1 | sed 's/\.tar\.gz//g' | head -n 1
         elif `which curl > /dev/null 2>&1`; then
              curl -sL https://github.com/$1/$2/releases | grep "tar\.gz" | cut -d  '/' -f 5 | cut -d '"' -f 1 | sed 's/\.tar\.gz//g' | head -n 1
         fi
    fi
}
