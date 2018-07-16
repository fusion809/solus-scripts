# Rubygems
if `which ruby > /dev/null 2>&1`; then
    export GEM_VERSION=$(ruby --version | cut -d ' ' -f 2 | sed 's/[a-z][0-9]//g' | sed 's/.[0-9]*$//g' | sed 's/$/.0/g')
    export GEMPATH=$HOME/.gem/ruby/$GEM_VERSION/bin:/usr/lib64/ruby/gems/$GEM_VERSION/bin
fi
