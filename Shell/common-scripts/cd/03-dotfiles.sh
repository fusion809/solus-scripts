function cdat {
    cd $HOME/.atom/$1
}

function cdc {
    cd $HOME/.config/$1
}

function cdsw {
    cdcf "sway/$1"
}

function cdi3 {
    cd $HOME/.i3/$1
}

function cdl {
    cd $HOME/.local/$1
}

function cdls {
    cdl "share/$1"
}

function cdap {
    cdls "applications/$1"
}

function cdli {
    cdls "icons/$1"
}

function cddd {
    cdls "desktop-directories/$1"
}

function cdlt {
    cdls "themes/$1"
}

function cdlw {
    cdls "wallpapers/$1"
}

alias cdw=cdlw

function cdic {
    cd $HOME/.icons/$1
}
