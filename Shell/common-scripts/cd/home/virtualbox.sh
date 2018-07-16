function cdvm {
    cd $HOME/"VirtualBox VMs"/$1
} 

function cdvi {
    cdvm "ISOs/$1"
}

function cdvil {
    cdvi "Linux/$1"
}

function cdvid {
    cdvil "Debian/$1"
}
 
function cdviu {
    cdvil "Ubuntu/$1"
}

