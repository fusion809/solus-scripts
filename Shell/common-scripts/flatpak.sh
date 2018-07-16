function flathub {
    wget -cqO- https://flathub.org/apps/ | grep "flatpakref" | grep "\<a class" | cut -d "'" -f 4 | cut -d '/' -f 6 | sed 's/\.flatpakref//g'
}

function flatlist {
    wget -cqO- https://flathub.org/apps/ | grep "flatpakref" | grep "\<a class" | cut -d "'" -f 4 | cut -d '/' -f 6 | sed 's/\.flatpakref//g' | tee -a $HOME/log/flathub-$(date +'%a_%-d_%m_%y_%r').log
}

function flatnum {
    flathub | wc -l
}

function flatup {
    flatpak update
}
