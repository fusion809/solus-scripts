function update {
  sudo eopkg upgrade -y
}

alias spuy=update

function spiy {
  sudo eopkg install -y "$@"
}

function spry {
  sudo eopkg remove -y "$@"
}

function sps {
  sudo eopkg search "$@"
}
