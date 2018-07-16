function cdg {
    cd $GHUB/$1
}

function cdgm {
    cd $GHUBM/$1
}

if [[ -n $ZSH_VERSION ]]; then
    . $(dirname "$0")/GitHub/mine.sh
elif `echo $0 | grep bash > /dev/null 2>&1`; then
    . $HOME/Shell/common-scripts/cd/GitHub/mine.sh
fi

function cdgo {
    cd $GHUBO/$1
}

if [[ -n $ZSH_VERSION ]]; then
    . $(dirname "$0")/GitHub/others.sh
elif `echo $0 | grep bash > /dev/null 2>&1`; then
    . $HOME/Shell/common-scripts/cd/GitHub/others.sh
fi
