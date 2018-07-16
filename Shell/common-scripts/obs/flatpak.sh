function flatpkup {
    pkgver=$(verg flatpak)
    pkgpver=$(vere flatpak)

    if [[ $pkgver == $pkgpver ]]; then
         printf "Seems to be up-to-date mate.\n"
    else
         sed -i -e "s/$pkgpver/$pkgver/g" $OBSH/flatpak/flatpak.spec
         cdobsh flatpak
         osc ci -m "Bumping $pkgpver->$pkgver"
    fi
}
