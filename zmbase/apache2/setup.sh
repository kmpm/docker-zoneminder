#!/usr/bin/env bash

mkdir -p /etc/service/apache2
cp /build/apache2/run.sh /etc/service/apache2/run
chmod +x /etc/service/apache2/run

