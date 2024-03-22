#!/usr/bin/env bash

set -ex

ls /etc/mkinitcpio.d/

# Expect error
ls /opt/not-found

ls /var/log
