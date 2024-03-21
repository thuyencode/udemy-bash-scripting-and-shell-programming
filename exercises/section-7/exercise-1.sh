#!/usr/bin/env bash

APP_FILE="sleep-walking-server"

if [ ! -e /tmp/"$APP_FILE" ]; then
  if [ ! -e "$APP_FILE" ]; then
    echo "$APP_FILE doesn't exist!"
    exit 1
  fi

  chmod 755 "$APP_FILE"
  cp "$APP_FILE" "/tmp/$APP_FILE"
fi

# Convert the given argument to lowercase
ARG=${1,,}

case "$ARG" in
"start")
  /tmp/${APP_FILE} &
  ;;
"stop")
  kill "$(cat /tmp/${APP_FILE}.pid)"
  ;;
*)
  echo "Usage: $0 start|stop"
  exit 1
  ;;
esac
