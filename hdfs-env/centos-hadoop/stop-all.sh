#!/usr/bin/env bash
docker exec -i hadoop1 /bin/sh -c "stop-all.sh"

docker stop hadoop1
docker stop hadoop2
docker stop hadoop3
docker stop hadoop4
docker stop hadoop5
