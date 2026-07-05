#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

echo 'copying taw commands...'
for src_file in "${SCRIPT_DIR}"/bin/*; do
  dst_file="/usr/local/bin/${src_file##*/}"
  sudo cp "${src_file}" "${dst_file}"
  sudo chown root:root "${dst_file}"
  sudo chmod 755 "${dst_file}"
done
echo 'done!'
