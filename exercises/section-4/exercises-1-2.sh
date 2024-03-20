#!/usr/bin/env bash

file_count() {
  local DIR=$1

  if [ ! -d "$DIR" ]; then
    echo "${DIR} is not a directory."
    return 1
  fi

  local COUNT=0

  for _ in "$DIR"/*; do
    ((COUNT += 1))
  done

  echo "${DIR}: ${COUNT} file(s)."
}

file_count "$1"
