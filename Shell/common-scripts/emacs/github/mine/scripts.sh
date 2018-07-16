function emsc {
  emacs "$SCR/$1"
}

if [[ -n $ZSH_VERSION ]]; then
    for i in $(dirname "$0")/scripts/*.sh
    do
         . "$i"
    done
elif `echo $0 | grep "bash" > /dev/null 2>&1`; then
# If it's bash we pretty much are stuck with guessing where we are
    for i in $HOME/Shell/common-scripts/emacs/github/mine/scripts/*.sh
    do
         . "$i"
    done
fi
