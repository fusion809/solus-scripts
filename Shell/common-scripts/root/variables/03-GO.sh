# Go
unset GOROOT
unset GOPATH
if [[ -d /usr/lib/go ]]; then
    export GOROOT=/usr/lib/go

    if [[ -d /root/go ]]; then
         export GOPATH=/root/go
    fi
fi

