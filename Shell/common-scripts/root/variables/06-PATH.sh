# PATH
export PATH=
export PATH=/bin:/sbin:/usr/bin:/usr/sbin
export PATH=$PATH:/usr/local/bin:/usr/local/sbin
if [[ -d /root/anaconda3 ]]; then
    export PATH=/root/anaconda3/bin:$PATH
fi

if [[ -d /root/.local/bin ]]; then
    export PATH=/root/.local/bin:$PATH
fi

if [[ -d /root/.bin ]]; then
    export PATH=/root/.bin:$PATH
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
if [[ -d /root/.nix-profile/bin ]]; then
    export PATH=$PATH:/root/.nix-profile/bin
fi

if [[ -d /root/.nix-profile/sbin ]]; then
    export PATH=$PATH:/root/.nix-profile/sbin
fi

# Guix
if [[ -d /root/.guix-profile/bin ]]; then
    export PATH=$PATH:/root/.guix-profile/bin
fi

if [[ -d /root/.guix-profile/sbin ]]; then
    export PATH=$PATH:/root/.guix-profile/sbin
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
