#!/usr/bin/env bash

file_count() {
  local DIR=$1

  if [ ! -d "$DIR" ]; then
    echo "${DIR} is not a directory."
    return 1
  fi

  echo "${DIR}: $(find "$DIR" | wc --lines) file(s)."
}

file_count "$1"
