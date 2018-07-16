# Programs
function cdp {
    cd $HOME/Programs/$1
}

function cdpa {
    if [[ -d $HOME/Programs/AppImage ]]; then
         cdp AppImage/$1
    elif [[ -d $HOME/Programs/AppImages ]]; then
         cdp AppImages/$1
    else
         read -p "No AppImage directory found at ~/Programs/AppImage, or ~/Programs/AppImages. Would you like you edit the file in which this function was defined?\n" yn
         case $yn in
              [Yy]* ) vim $HOME/Shell/common-scripts/cd.sh
         esac
    fi
}

function cdpd {
    cdp Deb/$1
}

function cdpe {
    cdp "exe/$1"
}

function cdpj {
    cdp "jar/$1"
}

function cdpr {
    cdp rpm/$1
}

function cdpz {
    cdp zip/$1
}

