#!/bin/bash

source utils.sh

set -e

declare -a bundle=(
  .irbrc
  .tmux.conf
  .vim
  .vimrc
  .zlogout
  .zshrc
  .config/bash
  .config/zsh
)

output_file="dotfiles.tar.gz"

while [[ $# -gt 0 ]]
do
  key="$1"

  case $key in
    -h|--host)
      host="$2"
      shift
      ;;

    -i|--identity-file)
      identity_file="$2"
      shift
      ;;

    -o|--output)
      output_file="$2"
      shift
      ;;

    -v|--verbose)
      VERBOSE='-v'
      ;;

    --tar)
      use_tar=1
      ;;

    *)
      echo "Invalid argument $1"
      exit 128
      ;;
  esac
  shift # past argument or value
done

# if a host is not specified create a local file to scp later, else ssh to the
# host and unpack dotfiles
if [[ -z ${host+x} ]]; then

  if [[ -n ${output_file+x} ]]; then
    echo >&2 'WARN: --output-file is ignored when using --host'
  fi

  # If directory is given, file name defaults to dotfiles.tar.gz
  if [[ -d "${output_file}" ]]; then
    output_file="${output_file}/dotfiles.tar.gz"
  fi

  tar --dereference -C "${HOME}" -czf "${output_file}" "${bundle[@]}"
  du -h "${output_file}"

else

  if [[ -n ${identity_file+x} ]]; then
    ident="-i ${identity_file}"
  fi

  if [[ -n ${use_tar+x} ]]; then
    tar --dereference -C "${HOME}" -cz "${bundle[@]}" | ssh ${ident} "$host" 'tar -C ${HOME} -xz'
  else
    rsync -avz \
      --no-motd \
      --copy-links \
      --copy-dirlinks \
      --exclude "*.git" \
      $(printf "${HOME}/%s " "${bundle[@]}") \
      "${host}:~"
  fi
fi
