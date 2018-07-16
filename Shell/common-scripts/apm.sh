function apmu {
    apm upgrade --no-confirm
}

alias apmup=apmu

function apmi {
    apm install "$@"
}

alias apmin=apmi

function apmr {
    apm remove "$@"
}

alias apmrm=apmr

function apms {
    apm search "$@"
}

function apml {
    apm list
}
