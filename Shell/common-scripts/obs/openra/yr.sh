function yrup {
        cdgo yr
        hub pull origin master -q
        enlv=$(cat mod.config | grep '^ENGINE\_VERSION' | cut -d '"' -f 2) 
        enpv=$(cat $HOME/OBS/home:fusion809/openra-yr/openra-yr.spec | grep "define engine\_version" | cut -d ' ' -f 3) 
        mastn=$(comno) 
        specn=$(vere openra-yr) 
        comm=$(loge) 
        specm=$(come openra-yr) 
        if [[ $specn == $mastn ]]
        then
                printf "OpenRA Yuri's Revenge is up to date!\n"
        else
                sed -i -e "s/$specn/$mastn/g" $OBSH/openra-yr/{openra-yr.spec,PKGBUILD}
                sed -i -e "s/$specm/$comm/g" $OBSH/openra-yr/{openra-yr.spec,PKGBUILD}
                if ! [[ $enpv == $enlv ]]
                then
                        sed -i -e "s/$enpv/$enlv/g" $HOME/OBS/home:fusion809/openra-yr/{openra-yr.spec,PKGBUILD}
                        make clean
                        make
                        tar czvf $HOME/OBS/home:fusion809/openra-yr/engine-${enlv}.tar.gz engine
                        cdobsh openra-yr
                        osc rm engine-${enpv}.tar.gz
                        osc add engine-${enlv}.tar.gz
                        cd -
                fi
                cdobsh openra-yr
                osc ci -m "Bumping $specn->$mastn"
        fi
}

