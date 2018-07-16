function 0adup {
    cdgo 0ad
    git pull origin master -q
    # See 05-version.sh for the definition of these funcs
    mastn=$(comno)
    specn=$(vere 0ad)
    comm=$(loge)
    specm=$(come 0ad)

    if [[ $specn == $mastn ]]; then
         printf "0 A.D. is up to date!\n"
    else
         sed -i -e "s/$specn/$mastn/g" $OBSH/0ad/0ad.spec
         sed -i -e "s/$specn/$mastn/g" $OBSH/0ad-data/0ad-data.spec
         sed -i -e "s/$specm/$comm/g" $OBSH/0ad/0ad.spec
         sed -i -e "s/$specm/$comm/g" $OBSH/0ad-data/0ad-data.spec
         cdobsh 0ad; osc ci -m "Bumping $specn->$mastn"
         cdobsh 0ad-data; osc ci -m "Bumping $specn->$mastn"
    fi
}
