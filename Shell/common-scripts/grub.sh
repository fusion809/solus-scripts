function update-grub {
    if `which grub-mkconfig > /dev/null 2>&1`; then
         sudo grub-mkconfig -o /boot/grub/grub.cfg
    elif `which grub2-mkconfig > /dev/null 2>&1`; then
         sudo grub2-mkconfig -o /boot/grub2/grub.cfg
    fi
}

function grubi {
    test1=$(df -T /dev/sda1 | grep "vfat")
    test2=$(df -T /dev/sda1 | grep "ext2")
    if `echo $test1 > /dev/null 2>&1`; then
         if `which grub-install > /dev/null 2>&1`; then
              grub-install --target=x86_64-efi --efi-directory=/boot/efi /dev/sda
         elif `which grub2-install > /dev/null 2>&1`; then
              grub2-install --target=x86_64-efi --efi-directory=/boot/efi /dev/sda
         else
              printf "GRUB install binary is not detected in PATH, grub-install and grub2-install tried!"
         fi
    elif `echo $test2 > /dev/null 2>&1`; then
         if `which grub-install > /dev/null 2>&1`; then
              grub-install --target=i386-pc /dev/sda
         elif `which grub2-install > /dev/null 2>&1`; then
              grub2-install --target=i386-pc /dev/sda
         fi
    fi
}   
