function comsearch {
    for dir in $(echo $PATH | sed 's/:/\n/g')
    do
         if [[ -d $dir ]]; then 
              find $dir -name "*$@*"
         fi
    done
}

alias comfind=comsearch

function shfind {
    if `cat $HOME/.bashrc | grep "$1" > /dev/null 2>&1`; then
         printf "$HOME/.bashrc"
         cat $HOME/.bashrc | grep "$1"
    fi
    
    if `cat $HOME/.zshrc | grep "$1" > /dev/null 2>&1`; then
         printf "$HOME/.zshrc"
         cat $HOME/.zshrc | grep "$1"
    fi
    grep --include="*.sh" -R "$1" $HOME/Shell
}

function funcfind {
    if `cat $HOME/.bashrc | grep "function $1" > /dev/null 2>&1`; then
        printf "$HOME/.bashrc"
        cat $HOME/.bashrc | grep "function $1"
    fi

    if `cat $HOME/.bashrc | grep "alias $1" > /dev/null 2>&1`; then
        printf "$HOME/.bashrc"
        cat $HOME/.bashrc | grep "alias $1"
    fi    
 
    if `cat $HOME/.zshrc | grep "function $1" > /dev/null 2>&1`; then
         printf "$HOME/.zshrc\n"
         cat $HOME/.zshrc | grep "function $1" 
    fi

    if `cat $HOME/.zshrc | grep "alias $1" > /dev/null 2>&1`; then
         printf "$HOME/.zshrc\n"
         cat $HOME/.zshrc | grep "alias $1" 
    fi
         
    grep --include="*.sh" -R "function $1" $HOME/Shell
    grep --include="*.sh" -R "alias $1" $HOME/Shell
}
