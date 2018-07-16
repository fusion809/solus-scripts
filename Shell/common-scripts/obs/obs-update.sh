function obsdup {
    pkgver=$(verg openSUSE obs-service-download_files)
    pkgpver=$(verpe obs-service-download_files)

    if [[ $pkgpver == $pkgver ]]; then
         printf "Seems to be up-to-date mate.\n"
    else
         sed -i -e "s/$pkgpver/$pkgver/g" $OBSH/obs-service-download_files/PKGBUILD
         cdobsh obs-service-download_files
         osc ci -m "Bumping $pkgpver->$pkgver"
    fi
}

function oscup {
    pkgver=$(verg openSUSE osc)
    pkgpver=$(verpe osc)

    if [[ $pkgpver == $pkgver ]]; then
         printf "Seems to be up-to-date mate.\n"
    else
         sed -i -e "s/$pkgpver/$pkgver/g" $OBSH/osc/PKGBUILD
         cdobsh osc
         osc ci -m "Bumping $pkgpver->$pkgver"
    fi
}
