function vcl {
    vim *.changelog
}

alias vchl=vcl

function vds {
    vim *.dsc
}

alias vdsc=vds
alias vsc=vds

function vrl {
    vim *rules
}

function vsl {
    vim $HOME/SlackBuilds
}

function vsp {
    specl=$(ls | grep "\.spec")
    specln=$(echo $specl | wc -l)
    if [[ $specln > 1 ]] && [[ -f $(basename $PWD).spec ]]; then
         vim $(basename $PWD).spec
    elif [[ $specl > 1 ]]; then
         vim $(echo $specl | head -n 1) 
    else
         vim $(basename $PWD).spec
    fi
}

function vyl {
    if `ls .*.yml > /dev/null 2>&1`; then
         vim .*.yml
    elif `ls *.yml > /dev/null 2>&1`; then
         vim *.yml
    fi
}

alias vyml=vyl

function vtyl {
    vim .travis.yml
}
