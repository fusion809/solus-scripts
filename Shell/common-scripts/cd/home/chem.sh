function cdch {
    cd $HOME/Chem/$1
}

# -2D
function cd2d {
    cdch "2D/$1"
}

# --StructFiles
function cd2dst {
    cd2d "StructFiles/$1"
}

alias cdst=cd2dst

# -3D
function cd3d {
    cdch "3D/$1"
}

# --CIF
function cd3dcf {
    cd3d "CIF/$1"
}

alias cd3dcif=cd3dcf
alias cdcif=cd3dcf

# --CML
function cd3dcl {
    cd3d "CML/$1"
}

# --PML
function cd3dpm {
    cd3d "PML/$1"
}

alias cdpm=cd3dpm
alias cdpml=cd3dpm
