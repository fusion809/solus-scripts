function libsup {
    cdgo avogadrolibs
    git pull origin master -q
    mastn=$(comno)
    specn=$(cat $OBS/home:fusion809/avogadro2-libs/avogadro2-libs.spec | grep "Version:" | sed 's/Version:\s*//g')
    comm=$(git log | head -n 1 | cut -d ' ' -f 2)
    specm=$(cat $OBS/home:fusion809/avogadro2-libs/avogadro2-libs.spec | grep "define commit" | cut -d ' ' -f 3)

    if [[ $specn == $mastn ]]; then
         printf "Avogadro 2 libraries is up to date!\n"
    else
         sed -i -e "s/$specn/$mastn/g" $OBS/home:fusion809/avogadro2-libs/avogadro2-libs.spec
         sed -i -e "s/$specm/$comm/g" $OBS/home:fusion809/avogadro2-libs/avogadro2-libs.spec
         cdobs home:fusion809/avogadro2-libs
         osc ci -m "Bumping $specn->$mastn"
    fi
}

alias avogadrolibsup=libsup
alias avolibsup=libsup
