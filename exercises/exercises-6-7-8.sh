#!/usr/bin/env bash

for FILE in "$@"; do
  if [ -z "$FILE" ]; then
    echo "Please provide a file name."
  elif [ ! -e "$FILE" ]; then
    echo "$FILE does not exist."
  else
    if [ -d "$FILE" ]; then
      echo "$FILE is a directory."
    elif [ -f "$FILE" ]; then
      echo "$FILE is a regular file."
    else
      echo "$FILE is another type of file."
    fi

    ls -l "$FILE"
  fi
done
