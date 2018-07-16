# Go
unset GOROOT
unset GOPATH
if [[ -d /usr/lib/go ]]; then
    export GOROOT=/usr/lib/go

    if [[ -d $HOME/go ]]; then
         export GOPATH=$HOME/go
    fi
fi

