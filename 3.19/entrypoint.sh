#!/bin/sh
set -e
/usr/sbin/sshd
/usr/sbin/lighttpd -D -f /etc/lighttpd/lighttpd.conf
