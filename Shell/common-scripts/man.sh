function cpman {
    sudo cp -a /usr/share/man/man$1/$2.$1 $HOME/Documents/Manpages
}

function cpmang {
    sudo cp -a /usr/share/man/man$1/$2.$1.gz $HOME/Documents/Manpages
}

function cpmanx {
    sudo cp -a /usr/share/man/man$1/$2.$1.xz $HOME/Documents/Manpages
}

function cpmanb {
    sudo cp -a /usr/share/man/man$1/$2.$1.bz2 $HOME/Documents/Manpages
}

function manconv {
    pushd $HOME/Documents/Manpages
    gzip -c $2.$1 > $2.$1.gz
    zcat $2.$1.gz | groff -mandoc -Thtml > $2.$1.html
    sudo chmod 777 -R *
    rm $2.$1.gz $2.$1
    popd
}

function manconvb {
    pushd $HOME/Documents/Manpages
         sudo chmod 777 -R $2.$1.bz2
         bzcat $2.$1.bz2 | groff -mandoc -Thtml > $2.$1.html
         sudo chmod 777 -R *
         rm $2.$1.gz $2.$1
    popd
}

function manconvg {
    pushd $HOME/Documents/Manpages
         zcat $2.$1.gz | groff -mandoc -Thtml > $2.$1.html
         sudo chmod 777 -R *
         rm $2.$1.gz
    popd
}

function manconvx {
    pushd $HOME/Documents/Manpages
         sudo chmod 777 -R $2.$1.xz
         xzcat $2.$1.gz | groff -mandoc -Thtml > $2.$1.html
         sudo chmod 777 -R *
         rm -rf $2.$1.gz $2.$1 $2.$1.xz
    popd
}

function manhtml {
    cpman $1 $2 && manconv $1 $2 && cp -a $HOME/Documents/Manpages/$2.$1.html $HOME/$WEB/man/man && cd $HOME/$WEB/man/man
}

function manhtmlb {
    cpmanb $1 $2 && manconvb $1 $2 && cp -a $HOME/Documents/Manpages/$2.$1.html $HOME/$WEB/man/man && cd $HOME/$WEB/man/man
}

function manhtmlg {
    cpmang $1 $2 && manconvg $1 $2 && cp -a $HOME/Documents/Manpages/$2.$1.html $HOME/$WEB/man/man && cd $HOME/$WEB/man/man
}

function manhtmlx {
    cpmanx $1 $2 && manconvx $1 $2 && cp -a $HOME/Documents/Manpages/$2.$1.html $HOME/$WEB/man/man && cd $HOME/$WEB/man/man
}

