#!/usr/bin/env bash
docker run -d --privileged -h="zookeeper1" --net="none" --name="zookeeper1" -v /home/hozouhing/dockers/static:/static zookeeper
docker run -d --privileged -h="zookeeper2" --net="none" --name="zookeeper2" -v /home/hozouhing/dockers/static:/static zookeeper
docker run -d --privileged -h="zookeeper3" --net="none" --name="zookeeper3" -v /home/hozouhing/dockers/static:/static zookeeper

pipework docker0 -i eth1 zookeeper1 172.17.20.1/16@172.17.42.1
pipework docker0 -i eth1 zookeeper2 172.17.20.2/16@172.17.42.1
pipework docker0 -i eth1 zookeeper3 172.17.20.3/16@172.17.42.1

docker exec -d zookeeper1 /bin/sh -c "echo '127.0.0.1 localhost' > /etc/hosts"
docker exec -d zookeeper2 /bin/sh -c "echo '127.0.0.1 localhost' > /etc/hosts"
docker exec -d zookeeper3 /bin/sh -c "echo '127.0.0.1 localhost' > /etc/hosts"

docker exec -d zookeeper1 /bin/sh -c "cat /static/conf/hosts >> /etc/hosts"
docker exec -d zookeeper2 /bin/sh -c "cat /static/conf/hosts >> /etc/hosts"
docker exec -d zookeeper3 /bin/sh -c "cat /static/conf/hosts >> /etc/hosts"

docker exec -d zookeeper1 /bin/sh -c "echo '1' > /dynamic/zookeeper/tmp/myid"
docker exec -d zookeeper2 /bin/sh -c "echo '2' > /dynamic/zookeeper/tmp/myid"
docker exec -d zookeeper3 /bin/sh -c "echo '3' > /dynamic/zookeeper/tmp/myid"

docker exec -d zookeeper1 zkServer.sh start
docker exec -d zookeeper2 zkServer.sh start
docker exec -d zookeeper3 zkServer.sh start
