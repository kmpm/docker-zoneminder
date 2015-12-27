#!/usr/bin/env bash

#chown www-data:www-data /app -R
source /etc/apache2/envvars
exec /usr/sbin/apache2 -D FOREGROUND >>/var/log/apache_exec.log 2>&1

