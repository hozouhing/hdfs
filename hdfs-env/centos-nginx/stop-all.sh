#!/usr/bin/env bash
docker exec -i nginx1 nginx -s stop
docker exec -i nginx2 nginx -s stop

docker exec -i nginx1 pkill keeplived
docker exec -i nginx2 pkill keeplived

docker stop nginx1
docker stop nginx2

