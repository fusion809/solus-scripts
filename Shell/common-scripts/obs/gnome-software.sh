function gsup {
    pkgver=$(wget -cqO- https://github.com/GNOME/gnome-software/releases | grep "tar\.gz" | grep "3\.[02468]*\.[0-9]*" | cut -d '/' -f 5 | cut -d '"' -f 1 | sed 's/\.tar\.gz//g' | head -n 1)
    pkgpver=$(vere gnome-software)

    if [[ $pkgver == $pkgpver ]]; then
         printf "Seems to be up-to-date mate.\n"
    else
         sed -i -e "s/$pkgpver/$pkgver/g" $OBSH/gnome-software/gnome-software.spec
         cdobsh gnome-software
         osc ci -m "Bumping $pkgpver->$pkgver"
    fi
}
