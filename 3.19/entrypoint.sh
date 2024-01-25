#!/bin/sh
set -e
/usr/sbin/sshd
rc-update add lighttpd default
rc-service lighttpd restart
tail -f /dev/null # keep running