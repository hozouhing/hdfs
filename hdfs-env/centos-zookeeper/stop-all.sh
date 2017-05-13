#!/usr/bin/env bash
docker exec -i zookeeper1 zkServer.sh stop
docker exec -i zookeeper2 zkServer.sh stop
docker exec -i zookeeper3 zkServer.sh stop

docker stop zookeeper1
docker stop zookeeper2
docker stop zookeeper3
