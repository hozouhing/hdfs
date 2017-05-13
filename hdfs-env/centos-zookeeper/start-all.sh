#!/usr/bin/env bash
docker start zookeeper1
docker start zookeeper2
docker start zookeeper3

pipework docker0 -i eth0 zookeeper1 172.17.20.1/16@172.17.42.1
pipework docker0 -i eth0 zookeeper2 172.17.20.2/16@172.17.42.1
pipework docker0 -i eth0 zookeeper3 172.17.20.3/16@172.17.42.1

docker exec -d zookeeper1 /bin/sh -c "echo '127.0.0.1 localhost' > /etc/hosts"
docker exec -d zookeeper2 /bin/sh -c "echo '127.0.0.1 localhost' > /etc/hosts"
docker exec -d zookeeper3 /bin/sh -c "echo '127.0.0.1 localhost' > /etc/hosts"

docker exec -d zookeeper1 /bin/sh -c "cat /static/conf/hosts >> /etc/hosts"
docker exec -d zookeeper2 /bin/sh -c "cat /static/conf/hosts >> /etc/hosts"
docker exec -d zookeeper3 /bin/sh -c "cat /static/conf/hosts >> /etc/hosts"

#docker exec -d zookeeper1 /bin/sh -c "echo '1' > /dynamic/zookeeper/tmp/myid"
#docker exec -d zookeeper2 /bin/sh -c "echo '2' > /dynamic/zookeeper/tmp/myid"
#docker exec -d zookeeper3 /bin/sh -c "echo '3' > /dynamic/zookeeper/tmp/myid"

#docker exec -d zookeeper1 /bin/sh -c "rm -rf /dynamic/zookeeper/tmp/zookeeper_server.pid"
#docker exec -d zookeeper2 /bin/sh -c "rm -rf /dynamic/zookeeper/tmp/zookeeper_server.pid"
#docker exec -d zookeeper3 /bin/sh -c "rm -rf /dynamic/zookeeper/tmp/zookeeper_server.pid"

docker exec -d zookeeper1 zkServer.sh start
docker exec -d zookeeper2 zkServer.sh start
docker exec -d zookeeper3 zkServer.sh start 
