#!/usr/bin/env bash
docker start mysql1
docker start mysql2

pipework docker0 -i eth0 mysql1 172.17.50.1/24@172.17.42.1
pipework docker0 -i eth0 mysql2 172.17.50.2/24@172.17.42.1
