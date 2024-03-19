#!/usr/bin/env bash

ETC_SHADOW="/etc/shadow"

if [ -e $ETC_SHADOW ]; then
  echo "Shadow passwords are enabled."

  if [ -w $ETC_SHADOW ]; then
    echo "You have permissions to edit $ETC_SHADOW."
  else
    echo "You do NOT have permissions to edit $ETC_SHADOW."
  fi

else
  echo "$ETC_SHADOW is not found."
fi
