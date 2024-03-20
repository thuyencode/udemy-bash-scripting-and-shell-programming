#!/usr/bin/env bash

file_count() {
  local DIR=$1

  if [ -z "$DIR" ]; then
    echo "Please provide a directory."
    return 1
  fi

  if [ ! -d "$DIR" ]; then
    echo "${DIR} is not a directory."
    return 1
  fi

  echo "${DIR}: $(find "$DIR" | wc -l)"
}

file_count "$1"
