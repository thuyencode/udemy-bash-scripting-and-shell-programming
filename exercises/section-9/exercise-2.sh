#!/usr/bin/env bash

LINE_NUMBER=1
NUMBER_OF_LINES=0

while [ "$NUMBER_OF_LINES" -lt 1 ]; do
  read -rp "How many lines of /etc/passwd would you like to see: " NUMBER_OF_LINES
done

echo

while read -r LINE; do
  echo "${LINE_NUMBER}: ${LINE}"

  if [ "$LINE_NUMBER" -eq "$NUMBER_OF_LINES" ]; then
    break
  fi

  ((LINE_NUMBER++))
done </etc/passwd
