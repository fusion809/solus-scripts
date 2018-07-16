function lbtokg {
    octe "0.4535924*$1" | sed 's/ans =\s*//g'
}

function kgtolb {
    octe "$1/0.4535924" | sed 's/ans =\s*//g'
}
