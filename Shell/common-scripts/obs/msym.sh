function msymup {
    cdgo libmsym
    git pull origin master -q
    mastn=$(comno)
    specn=$(cat $OBS/home:fusion809/libmsym/libmsym.spec | grep "Version:" | sed 's/Version:\s*//g')
    comm=$(git log | head -n 1 | cut -d ' ' -f 2)
    specm=$(cat $OBS/home:fusion809/libmsym/libmsym.spec | grep "define commit" | cut -d ' ' -f 3)

    if [[ $specn == $mastn ]]; then
         printf "libmsym is up to date!\n"
    else
         sed -i -e "s/$specn/$mastn/g" $OBS/home:fusion809/libmsym/libmsym.spec
         sed -i -e "s/$specm/$comm/g" $OBS/home:fusion809/libmsym/libmsym.spec
         cdobs home:fusion809/libmsym
         osc ci -m "Bumping $specn->$mastn"
    fi
}

alias libmsymup=msymup
