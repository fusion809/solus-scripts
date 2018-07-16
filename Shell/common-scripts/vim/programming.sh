function vc {
    vim *.c
}

function vcp {
    vim *.cpp
}

function vdk {
    vim Dockerfile
}

function vgc {
    vim gtk.css
}

function vgo {
    vim *.go
}

function vgp {
    vim *.gp
}

function vgt {
    vim gtkrc
}

function vit {
    vim index.theme
}

alias vth=vit

function vmd {
    vim *.md
}

function vmk {
    vim Makefile
}

function vpy {
    vim *.py
}

function vrl {
    vim *.rlib
}

function vrm {
    # If a README exists, open it to edit it
    # otherwise create one written in markdown
    if `ls * | grep "README" > /dev/null 2>&1`; then
         vim README*
    else
         vim README.md
    fi
}

function vrs {
    vim *.rs
}

