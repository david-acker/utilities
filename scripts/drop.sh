#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <new_directory_name>"
  exit 1
fi

new_directory_name="${1}"
temp_directory_name="$(uuidgen)"

mkdir "${temp_directory_name}"

rsync -av --progress . "${temp_directory_name}" --exclude "${temp_directory_name}"

find . ! -name "${temp_directory_name}" -maxdepth 1 -exec rm -rf {} \;

mv "${temp_directory_name}" "${new_directory_name}"

echo "All files and directoried dropped into: ${new_directory_name}"
