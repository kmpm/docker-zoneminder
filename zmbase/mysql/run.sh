#!/usr/bin/env bash

trap 'mysqladmin -u root -proot shutdown' EXIT

# Start MySQL
exec /sbin/setuser mysql /usr/bin/mysqld_safe >>/var/log/mysql_exec.log 2>&1

