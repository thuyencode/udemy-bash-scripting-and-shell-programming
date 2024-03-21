#!/usr/bin/env bash

logit() {
  logger -s -i -t "randomly" -p user.info "$@"
}

logit "Random number: $RANDOM"
logit "Random number: $RANDOM"
logit "Random number: $RANDOM"
