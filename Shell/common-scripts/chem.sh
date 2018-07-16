function charcp {
    find /data/Chem -name "*$(echo $PWD | cut -d '-' -f 2)*" -exec cp '{}' . \;
}
