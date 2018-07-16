function ctof {
    octe "32+1.8*$1"
}

function ftoc {
    octe "("${1}"-32)/1.8"
}
