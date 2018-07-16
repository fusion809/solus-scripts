function uRAup {
    cd $HOME/GitHub/others/uRA
    git pull origin master -q
    # OpenRA latest engine version
    enlv=$(cat mod.config | grep '^ENGINE\_VERSION' | cut -d '"' -f 2)
    # OpenRA engine version in spec file
    enpv=$(cat $HOME/OBS/home:fusion809/openra-ura/openra-ura.spec | grep "define engine\_version" | cut -d ' ' -f 3)
    mastn=$(git rev-list --branches master --count)
    specn=$(cat $HOME/OBS/home:fusion809/openra-ura/openra-ura.spec | grep "Version\:" | sed 's/Version:\s*//g')
    comm=$(git log | head -n 1 | cut -d ' ' -f 2)
    specm=$(cat $HOME/OBS/home:fusion809/openra-ura/openra-ura.spec | grep "define commit" | cut -d ' ' -f 3)

    if [[ $specn == $mastn ]]; then
         printf "OpenRA Red Alert Unplugged mod is up to date\!\n"
    else
         sed -i -e "s/$specn/$mastn/g" $HOME/OBS/home:fusion809/openra-ura/{openra-ura.spec,PKGBUILD}
         sed -i -e "s/$specm/$comm/g" $HOME/OBS/home:fusion809/openra-ura/{openra-ura.spec,PKGBUILD}
         if ! [[ $enpv == $enlv ]]; then
              sed -i -e "s/$enpv/$enlv/g" $HOME/OBS/home:fusion809/openra-ura/{openra-ura.spec,PKGBUILD}
              make
              tar czvf $HOME/OBS/home:fusion809/openra-ura/engine-${enlv}.tar.gz engine
              cdobsh openra-ura
              osc rm engine-${enpv}.tar.gz
              osc add engine-${enlv}.tar.gz
              cd -
         fi
         cd $HOME/OBS/home:fusion809/openra-ura
         if ! [[ $enpv == $enlv ]]; then
              osc ci -m "Bumping $specn->$mastn; engine $enpv->$enlv"
         else
              osc ci -m "Bumping $specn->$mastn; engine version is unchanged."
         fi
    fi
}

alias uraup=uRAup

