#!/usr/bin/env bash

file_count() {
  local COUNT=0

  for _ in *; do
    ((COUNT += 1))
  done

  echo "There are ${COUNT} file(s) in the present working directory."
}

file_count
