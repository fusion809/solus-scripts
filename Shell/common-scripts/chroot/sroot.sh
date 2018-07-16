function sroot {
    function sbroot {
         if [[ -f /sabayon/bin/bash ]]; then
              if ! [[ -d /sabayon/data/Programs ]]; then
                   sudo mount /dev/sdb1 /sabayon/data
              fi
              genroot /sabayon
         fi
    }

    if ! [[ -f /slackware/bin/bash ]]; then
         sudo mount /dev/sda16 /slackware
    fi

    if ! [[ -d /slackware/data/Programs ]]; then
         sudo mount /dev/sdb1 /slackware/data
    fi

    genroot /slackware || sbroot || genroot /scientific
}

function slroot {
    genroot /scientific
}


