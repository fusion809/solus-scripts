if [[ -d $HOME/OBS ]]; then
    export OBS=$HOME/OBS
elif [[ -d /data/OBS ]]; then
    export OBS=/data/OBS
fi

export OBSH=$OBS/home:fusion809
