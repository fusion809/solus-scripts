function oscbot {
    osc build openSUSE_Tumbleweed --noverify "$@"
}

function oscba {
    osc build Arch_Extra --noverify "$@"
}

if `cat /etc/os-release | grep "Tumbleweed" > /dev/null 2>&1`; then
    alias oscb=oscbot
elif `cat /etc/os-release | grep "Arch" > /dev/null 2>&1`; then
    alias oscb=oscba
elif `cat /etc/os-release | grep "Fedora" > /dev/null 2>&1`; then
    function oscb {
         osc build Fedora_$(cat /etc/os-release | grep VERSION_ID | cut -d '=' -f 2) --noverify "$@"
    }

    alias oscbf=oscb
elif `cat /etc/os-release | grep "Debian" > /dev/null 2>&1`; then
    function oscb {
         VERSION=$(cat /etc/os-release | grep VERSION_ID | cut -d '=' -f 2 | sed 's/"//g')
         if `cat /etc/apt/sources.list | grep sid > /dev/null 2>&1`; then
             printf "sid isn't supported by the OBS, so sorry can't build for it.\n"
         elif [[ $VERSION == [0-9]* ]]; then
              VERSION=${VERSION}.0
         else
              VERSION="Testing"
         fi
         osc build Debian_${VERSION} --noverify "$@"
    }
fi

function oscns {
    oscb --no-service "$@"
}

alias oscbs=oscbns

