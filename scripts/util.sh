set -eo pipefail

function check-vars {
  local variable
  for variable in ${@}; do
    if [ -z ${!variable} ]; then
      echo "${variable} not set. Please set before continuing."
      exit 1
    fi
  done
}
