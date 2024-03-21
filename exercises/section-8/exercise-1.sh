#!/usr/bin/env bash

MESSAGE="Random number: $RANDOM"

echo "$MESSAGE"
logger -t "$0" -p user.info "$MESSAGE"
