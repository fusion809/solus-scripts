export NIX_PATH=nixpkgs=/nix/var/nix/profiles/per-user/$USER/channels/nixpkgs

if [[ -f /etc/ssl/ca-bundle.pem ]]; then
    export NIX_SSL_CERT_FILE=/etc/ssl/ca-bundle.pem
elif [[ -f /etc/ssl/certs/ca-certificates.crt ]]; then
    export NIX_SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
fi

if ! [[ -f $HOME/.config/nixpkgs/config.nix ]]; then
    mkdir -p $HOME/.config/nixpkgs
    printf "{ allowUnfree = true; }" > $HOME/.config/nixpkgs/config.nix
fi

function nixup {
    nix-channel --update && nix-env --upgrade
}

function nixr {
    nix-env --uninstall "$@"
}

function nixs {
    nix search "$@"
}

function nixi {
    nix-env -i "$@"
}

# Install from Nix file
function nixif {
    nix-env -if "$@"
}
