if ! [[ -f /usr/bin/octave ]]; then 
    if ! [[ -f $HOME/.nix-profile/bin/octave ]]; then
         if [[ -f /usr/bin/flatpak ]]; then
              printf "Warning, the push function for the opendesktop-app repository will NOT work with Flatpaks...\n"
              function octave {
    flatpak run org.octave.Octave
}
         fi
    fi
fi
 
function octcli {
    if ! `which octave-cli`; then
         if `which octave`; then
              octave --no-gui "$@"
         fi
    else
         octave-cli "$@"
    fi
}

function octe {
    if  [[ -f /usr/bin/octave ]]; then
         octave --eval "$1" | sed "s/ans =\s*//g"
    elif [[ -f $HOME/.nix-profile/bin/octave-cli ]]; then
         octave-cli --eval "$1" | sed "s/ans =\s*//g"
    fi
} 

for i in $HOME/Shell/common-scripts/octave/*.sh
do
    . "$i"
done
