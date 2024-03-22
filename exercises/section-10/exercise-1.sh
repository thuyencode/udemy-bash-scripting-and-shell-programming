#!/usr/bin/env bash

set -x

ls /etc/mkinitcpio.d/

# Expect error
ls /opt/not-found

ls /var/log
