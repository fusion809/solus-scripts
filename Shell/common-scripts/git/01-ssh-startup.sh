#############################################################
# The following script was taken from
# http://stackoverflow.com/a/18915067/1876983
#############################################################
# Sign in with SSH at startup
# Makes contributing to GitHub projects a lot simpler.
if [[ -a $HOME/.ssh/environment ]]; then
	SSH_ENV=$HOME/.ssh/environment
elif [[ $USER == fusion809 ]] && ! [[ -f $HOME/.ssh/id_rsa.pub ]]; then
	ssh-keygen -t rsa -b 4096 -C "brentonhorne77@gmail.com"
	SSH_ENV=$HOME/.ssh/environment
	git config --global user.name "fusion809"
	git config --global user.email "brentonhorne77@gmail.com"
elif [[ -n $EMAIL ]] && ! [[ -f $HOME/.ssh/id_rsa.pub ]]; then
	ssh-keygen -t rsa -b 4096 -C "$EMAIL"
	SSH_ENV=$HOME/.ssh/environment
	git config --global user.name "$USER"
	git config --global user.email "$EMAIL"
fi

if ! `which keychain > /dev/null 2>&1`; then
    if `cat /etc/os-release | grep -i openSUSE > /dev/null 2>&1`; then
         sudo zypper in -y keychain
    elif `cat /etc/os-release | grep -i Fedora > /dev/null 2>&1`; then
         sudo dnf install -y keychain
    elif `cat /etc/os-release | grep -i "Debian\|Ubuntu\|deepin" > /dev/null 2>&1`; then
         sudo apt install -y keychain
    elif `cat /etc/os-release | grep -i "CentOS" > /dev/null 2>&1`; then
         sudo yum install -y keychain
    elif `cat /etc/os-release | grep -i "Arch" > /dev/null 2>&1`; then
         sudo pacman -S keychain --noconfirm
    elif `cat /etc/os-release | grep -i "Gentoo" > /dev/null 2>&1`; then
         sudo emerge net-misc/keychain
    elif `cat /etc/os-release | grep -i "Void" > /dev/null 2>&1`; then
         sudo xbps-install -y keychain
    elif `cat /etc/os-release | grep -i "NixOS" > /dev/null 2>&1`; then
         nix-env -i keychain
    fi
fi

        if ! `cat /etc/os-release | grep Mageia > /dev/null 2>&1`; then
	      eval `keychain -q --eval id_rsa`
        fi


# AUR
if [[ $USER == "fusion809" ]] || [[ $AUR == "true" ]]; then
	if ! [[ -f $HOME/.ssh/config ]]; then
		echo "Host aur.archlinux.org\n  IdentityFile ~/.ssh/aur\n  User aur" > $HOME/.ssh/config
	fi

	if ! [[ -f $HOME/.ssh/aur.pub ]]; then
		ssh-keygen -f $HOME/.ssh/aur
	fi

	# start the ssh-agent
	# Remember, for this to work you need your SSH keys setup
	# https://help.github.com/articles/generating-ssh-keys/
        if ! `cat /etc/os-release | grep Mageia > /dev/null 2>&1`; then
	      eval `keychain -q --eval aur`
        fi
else
	printf "Add an AUR=true line to your $HOME/.gitconfig.sh file in order to set up SSH to authenticate AUR commits.\n"
fi

#############################################################
