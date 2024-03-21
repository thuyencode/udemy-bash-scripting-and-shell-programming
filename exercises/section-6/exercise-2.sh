#!/usr/bin/env bash

read -rp "Please enter a file extension: " FILE_EXTENSION

if [ -z "$(find . -type f -name "*.${FILE_EXTENSION}")" ]; then
  echo "No ${FILE_EXTENSION} files found."
  exit 1
fi

DEFAULT_PREFIX=$(date +%Y%m%d)

read -rp "Please enter a file prefix (Default is ${DEFAULT_PREFIX}): " FILE_PREFIX

if [ -z "$FILE_PREFIX" ]; then
  FILE_PREFIX=$DEFAULT_PREFIX
fi

for FILE in *"${FILE_EXTENSION}"; do
  echo "Renaming ${FILE} to ${FILE_PREFIX}-${FILE}"
  mv "$FILE" "${FILE_PREFIX}"-"${FILE}"
done
