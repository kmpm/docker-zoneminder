#!/usr/bin/env bash

mkdir -p /etc/service/mysql
cp /build/mysql/run.sh /etc/service/mysql/run
chmod +x /etc/service/mysql/run

