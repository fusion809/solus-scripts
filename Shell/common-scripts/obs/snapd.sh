function snapdup {
    pkgver=$(wget -cqO- https://github.com/snapcore/snapd/releases | grep -v "untagged" | grep "[0-9].vendor\.tar\.xz" | head -n 1 | cut -d '/' -f 6)
    pkgpver=$(vere snapd)

    if [[ $pkgver == $pkgpver ]]; then
         printf "Seems to be up-to-date mate.\n"
    else
         sed -i -e "s/$pkgpver/$pkgver/g" $OBSH/snapd/snapd.spec
         cdobsh snapd
         osc ci -m "Bumping $pkgpver->$pkgver"
    fi
}

function snapdgup {
    pkgver=$(wget -cqO- https://github.com/snapcore/snapd-glib/releases | grep -v "untagged" | grep "[0-9]\.tar\.xz" | head -n 1 | cut -d '/' -f 6)
    pkgpver=$(vere snapd-glib)

    if [[ $pkgver == $pkgpver ]]; then
         printf "Seems to be up-to-date mate.\n"
    else
         sed -i -e "s/$pkgpver/$pkgver/g" $OBSH/snapd-glib/snapd-glib.spec
         cdobsh snapd-glib
         osc ci -m "Bumping $pkgpver->$pkgver"
    fi
}
