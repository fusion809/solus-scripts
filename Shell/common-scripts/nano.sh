function ncp {
    nano *.cpp
}

function njs {
    nano *.js{,on}
}

function npk {
    if [[ -f package.json ]] | [[ -d node_modules ]]; then
         nano package.json
    else
         nano PKGBUILD
    fi
}

function nrl {
    nano *.rules
}

function nsl {
    nano *.SlackBuild
}

alias nsb=nsl

function nsp {
    nano *.spec
}
