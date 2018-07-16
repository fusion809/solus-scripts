# Dark Reign update
function drup {
    cdgo DarkReign
    git pull origin master -q
    # OpenRA latest engine version
    enlv=$(cat mod.config | grep '^ENGINE\_VERSION' | cut -d '"' -f 2)
    # OpenRA engine version in spec file
    enpv=$(cat $HOME/OBS/home:fusion809/openra-dr/openra-dr.spec | grep "define engine\_version" | cut -d ' ' -f 3)
    mastn=$(comno)
    specn=$(vere openra-dr)
    comm=$(loge)
    specm=$(come openra-dr)

    if [[ $specn == $mastn ]]; then
         printf "OpenRA Dark Reign is up to date!\n"
    else
         sed -i -e "s/$specn/$mastn/g" $OBSH/openra-dr/{openra-dr.spec,PKGBUILD}
         sed -i -e "s/$specm/$comm/g" $OBSH/openra-dr/{openra-dr.spec,PKGBUILD}
         if ! [[ $enpv == $enlv ]]; then
              sed -i -e "s/$enpv/$enlv/g" $HOME/OBS/home:fusion809/openra-dr/{openra-dr.spec,PKGBUILD}
              make clean
              make
              tar czvf $HOME/OBS/home:fusion809/openra-dr/engine-${enlv}.tar.gz engine
              cdobsh openra-dr
              osc rm engine-${enpv}.tar.gz
              osc add engine-${enlv}.tar.gz
              cd -
         fi
         cdobsh openra-dr
         osc ci -m "Bumping $specn->$mastn"
    fi
}

