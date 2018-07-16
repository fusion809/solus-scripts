function cda {
    cd $HOME/AUR/$1
}

if [[ -n $ZSH_VERSION ]]; then
    # Chem
    . $(dirname "$0")/home/chem.sh

    # Docs
    . $(dirname "$0")/home/documents.sh

    # OBS
    . $(dirname "$0")/home/obs.sh

    # Pictures
    . $(dirname "$0")/home/pictures.sh

    # Programs
    . $(dirname "$0")/home/programs.sh

    # Videos
    . $(dirname "$0")/home/videos.sh

    # VirtualBox VMs
    . $(dirname "$0")/home/virtualbox.sh
elif `echo $0 | grep "bash" > /dev/null 2>&1`; then
  # Chem
  . $HOME/Shell/common-scripts/cd/home/chem.sh

  # Docs
  . $HOME/Shell/common-scripts/cd/home/documents.sh

  # OBS
  . $HOME/Shell/common-scripts/cd/home/obs.sh

  # Pictures
  . $HOME/Shell/common-scripts/cd/home/pictures.sh

  # Programs
  . $HOME/Shell/common-scripts/cd/home/programs.sh

  # Videos
  . $HOME/Shell/common-scripts/cd/home/videos.sh

  # VirtualBox VMs
  . $HOME/Shell/common-scripts/cd/home/virtualbox.sh
fi

# Downloads
function cddo {
    cd $HOME/Downloads/$1
}

# Music
function cdm {
    cd $HOME/Music/$1
}

# cd to Shell
function cdsh {
    cd $HOME/Shell/$1
}

# cd to Textbooks
function cdt {
    cd "$HOME/Textbooks/$1"
}
