function cdpi {
    cd $HOME/Pictures/$1
}

function cdart {
    if [[ -d $HOME/Pictures/Artwork ]]; then
         cdpi Artwork/$1
    else
         read -p "No ~/Pictures/Artwork directory found. Would you like to edit the file in which this function was defined?\n" yn
         case $yn in
              [Yy]* ) vim $HOME/Shell/common-scripts/cd.sh
         esac
    fi
}

function cdps {
    cdpi Screenshots/$1
}
