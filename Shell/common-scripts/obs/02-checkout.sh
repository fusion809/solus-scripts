function obco {
    for i in "$@"
    do
         pushd $HOME/OBS
         osc co home:fusion809 "$i"
         popd
    done
}

function obc {
    pushd $HOME/OBS
    osc co home:fusion809 "$1"
    popd
    cdobsh "$1"
}

