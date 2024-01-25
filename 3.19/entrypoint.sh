#!/bin/sh
set -e
/usr/sbin/sshd
tail -f /dev/null # keep running