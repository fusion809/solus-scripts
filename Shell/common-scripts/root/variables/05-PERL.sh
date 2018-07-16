# Perl
unset PERL_PATH
if [[ -d /usr/bin/site_perl ]]; then
    export PERL_PATH=$PERL_PATH:/usr/bin/site_perl
fi
if [[ -d /usr/bin/vendor_perl ]]; then
    export PERL_PATH=$PERL_PATH:/usr/bin/vendor_perl
fi
if [[ -d /usr/bin/core_perl ]]; then
    export PERL_PATH=$PERL_PATH:/usr/bin/core_perl
fi

