#!/usr/bin/env bash

read -rp "Enter a name of a file or directory: " FILE

if [ ! -e "$FILE" ]; then
  echo "$FILE does not exist."
else
  if [ -d "$FILE" ]; then
    echo "$FILE is a directory."
  elif [ -f "$FILE" ]; then
    echo "$FILE is a regular file."
  else
    echo "$FILE is another type of file."
  fi
fi

ls -l "$FILE"
