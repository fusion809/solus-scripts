# PATH
export PATH=
export PATH=/bin:/sbin:/usr/bin:/usr/sbin
export PATH=$PATH:/usr/local/bin:/usr/local/sbin
if [[ -d $HOME/anaconda3 ]]; then
    export PATH=$HOME/anaconda3/bin:$PATH
fi

if [[ -d $HOME/.local/bin ]]; then
    export PATH=$HOME/.local/bin:$PATH
fi

if [[ -d $HOME/.bin ]]; then
    export PATH=$HOME/.bin:$PATH
fi

if [[ -d /usr/lib/hardening-wrapper/bin ]]; then
    export PATH=$PATH:/usr/lib/hardening-wrapper/bin
fi

# Java
if [[ -n $JAVA_HOME ]]; then
    export PATH=$PATH:$JAVA_HOME/bin
fi

# Gem
if [[ -n $GEMPATH ]]; then
    export PATH=$PATH:$GEMPATH
fi

# Go
if [[ -n $GOPATH ]]; then
    export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
fi

# Perl
if [[ -n $PERL_PATH ]]; then
    export PATH=$PATH:$PERL_PATH
fi

# Nix
if [[ -d $HOME/.nix-profile/bin ]]; then
    export PATH=$PATH:$HOME/.nix-profile/bin
fi

if [[ -d $HOME/.nix-profile/sbin ]]; then
    export PATH=$PATH:$HOME/.nix-profile/sbin
fi

# Guix
if [[ -d $HOME/.guix-profile/bin ]]; then
    export PATH=$PATH:$HOME/.guix-profile/bin
fi

if [[ -d $HOME/.guix-profile/sbin ]]; then
    export PATH=$PATH:$HOME/.guix-profile/sbin
fi

# Linuxbrew
export BREW_PATH=/home/linuxbrew/.linuxbrew
if [[ -d $BREW_PATH/bin ]]; then
    export PATH=$PATH:$BREW_PATH/bin:$BREW_PATH/sbin
fi

# JChem
if [[ -d /opt/chemaxon/jchemsuite/bin ]]; then
    export PATH=$PATH:/opt/chemaxon/jchemsuite/bin
fi
