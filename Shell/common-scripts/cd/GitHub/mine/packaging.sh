# Packaging
function cdpk {
    cdgm "packaging/$1"
}

alias cdpck=cdpk

function cdaim {
    cdpk "AppImages/$1"
}

function cddae {
    cdpk "docker-atom-editor/$1"
}

function cdfo {
    cdpk "fusion809-overlay/$1"
}

# cd to my OpenRA repository
function cdora {
    cdpk "OpenRA/$1"
}

alias cdopenra=cdora
alias cdopra=cdora
