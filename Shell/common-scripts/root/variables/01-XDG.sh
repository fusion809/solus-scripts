# Nix
if [[ -d /root/.nix-profile/share ]]; then
    export XDG_DATA_DIRS=/root/.nix-profile/share:/usr/share:/usr/share/glib-2.0/schemas
fi
