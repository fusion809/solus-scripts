function update {
  sudo eopkg upgrade -y
}

function spiy {
  sudo eopkg install -y "$@"
}

function spry {
  sudo eopkg remove -y "$@"
}

function sps {
  sudo eopkg search "$@"
}
