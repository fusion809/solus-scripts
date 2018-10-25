function update {
  sudo eopkg upgrade -y
}

alias spuy=update

function spiy {
  sudo eopkg install -y "$@"
}

alias spi=spiy
alias sei=spiy

function spry {
  sudo eopkg remove -y "$@"
}

alias spr=spry

function sps {
  sudo eopkg search "$@"
}
