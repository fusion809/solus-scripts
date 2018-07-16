function zshup {
    pkgver=$(wget -cqO- http://www.zsh.org/pub/ | grep ".*[0-9].*tar.gz" | tail -n 1 | sed 's/.*"zsh-//g' | sed 's/.tar.gz.*//g')
    pkgpver=$(vere zsh)

    if [[ $pkgver == $pkgpver ]]; then
         printf "Seems to be up-to-date mate.\n"
    else
         sed -i -e "s/$pkgpver/$pkgver/g" $OBSH/zsh/zsh.spec
         cdobsh zsh
         osc ci -m "Bumping $pkgpver->$pkgver"
    fi
}
