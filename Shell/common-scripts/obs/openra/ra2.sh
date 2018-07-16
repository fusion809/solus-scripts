function ra2up {
    cdgo ra2
    git pull origin master -q
    mastn=$(comno)
    specn=$(vere openra-ra2)
    comm=$(loge)
    specm=$(come openra-ra2)

    if [[ $specn == $mastn ]]; then
         printf "OpenRA RA2 is up to date!\n"
    else
         sed -i -e "s/$specn/$mastn/g" $OBSH/openra-ra2/{openra-ra2.spec,PKGBUILD}
         sed -i -e "s/$specm/$comm/g" $OBSH/openra-ra2/{openra-ra2.spec,PKGBUILD}
         if ! [[ $enpv == $enlv ]]; then
              sed -i -e "s/$enpv/$enlv/g" $HOME/OBS/home:fusion809/openra-ra2/{openra-ra2.spec,PKGBUILD}
              make clean
              make
              tar czvf $HOME/OBS/home:fusion809/openra-ra2/engine-${enlv}.tar.gz engine
              cdobsh openra-ra2
              osc rm engine-${enpv}.tar.gz
              osc add engine-${enlv}.tar.gz
              cd -
         fi
         cdobsh openra-ra2
         osc ci -m "Bumping $specn->$mastn"
    fi
}

