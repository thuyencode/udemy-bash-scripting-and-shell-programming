#!/usr/bin/env bash

while true; do
  echo -e "1. Show disk usage.\n2. Show system uptime.\n3. Show the users logged into the system.\n"
  read -rp 'What would you like to do (Enter "q" to quit): ' USER_CHOICE
  echo

  case "$USER_CHOICE" in
  1)
    echo "Uptime: $(uptime)"
    ;;
  2)
    echo "Disk Usage:"
    df -h
    ;;
  3)
    echo "Users who logged into the system:"
    who
    ;;
  q)
    break
    ;;
  esac

  echo
done
