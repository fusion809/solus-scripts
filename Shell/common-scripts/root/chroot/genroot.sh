function genroot {
    # Check where the root filesystem is
    if [[ -d $1/root/dev ]]; then
         root="$1/root"
    elif [[ -d $1/@/dev ]]; then
         root="$1/@"
    else
         root="$1"
    fi

    # Make sure the data partition is mounted
    if [[ -d $root/data ]] && ! `cat /etc/mtab | grep $root/data > /dev/null 2>&1`; then
         mount /dev/sdb1 $root/data
    fi

    # Check if the appropriate mount points are set up for the chroot to work
    if ! [[ -f "$root/proc/cgroups" ]]; then
         mount -t proc /proc "$root/proc"
         mount --rbind /dev "$root/dev"
         mount --make-rslave "$root/dev"
         mount --rbind /sys "$root/sys"
         mount --make-rslave "$root/sys"
         rm "$root/etc/resolv.conf"
         cp -L /etc/resolv.conf "$root/etc"
    fi

    if [[ -f $root/bin/env ]]; then
         ENV=/bin/env
    elif [[ -f $root/usr/bin/env ]]; then
         ENV=/usr/bin/env
    fi
    
    if [[ -f $root/usr/local/bin/su-fusion809 ]]; then
         chroot "$root" /usr/local/bin/su-fusion809
    elif [[ -f $root/bin/zsh ]]; then
         chroot "$root" $ENV -i     \
               HOME="/root"              \
               TERM="$TERM"              \
               PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin \
               /bin/zsh --login +h
    elif [[ -f $root/bin/bash ]]; then
         chroot "$root" $ENV -i     \
               HOME="/root"              \
               TERM="$TERM"              \
               PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin \
               /bin/bash --login +h
    elif `cat $root/etc/os-release | grep -i NixOS > /dev/null 2>&1`; then
         INIT=$(find $root/nix/store -type f -path '*nixos*/init' -print -quit)
         BASH=$(find $root/nix/store -type f -path '*/bin/bash' -print -quit)
         BASH=$(echo $BASH | sed "s|/nixos||g")
         ENV=$(find $root/nix/store -type f -path '*/bin/env' -print -quit)
         sed -i "s,exec systemd,exec /$BASH," $INIT

         INIT=$(echo $INIT | sed "s|/nixos||g")

         chroot $root ./$INIT --login +h

    elif [[ -f $root/bin/sh ]] || [[ -L $root/bin/sh ]]; then
         chroot "$root" /bin/sh
    else
         printf "I'm missing a shell, mate!"
    fi

    if [[ -f $root/usr/bin/dnf ]]; then
         touch "$root/.autorelabel"
    fi
}
