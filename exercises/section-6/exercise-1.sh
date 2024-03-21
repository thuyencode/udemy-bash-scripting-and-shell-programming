#!/usr/bin/env bash

FILE_EXTENSION=".jpg"
DATE=$(date +%Y%m%d)

if [ -z "$(find . -type f -name "*.${FILE_EXTENSION}")" ]; then
  echo "No ${FILE_EXTENSION} files found."
  exit 1
fi

for FILE in *"${FILE_EXTENSION}"; do
  echo "Renaming ${FILE} to ${DATE}-${FILE}"
  mv "$FILE" "${DATE}"-"${FILE}"
done
