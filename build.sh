#/usr/bin/env bash

cd zmbase
docker build -t mine/zmbase .

cd ..
cd zm
docker build -t mine/zoneminder .

