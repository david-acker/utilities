#!/bin/sh

current_directory_name="$(basename "$(pwd)")"
parent_directory_name="$(dirname "$(pwd)")"

if [ "${current_directory_name}" == "/" ]; then
  echo "Unable to lift out of the root directory."
  exit 1
fi

rsync -av --progress . "${parent_directory_name}" --exclude .

cd "${parent_directory_name}"

rm -r "${current_directory_name}"

echo "All files and directories lifted out of: ${parent_directory_name}"