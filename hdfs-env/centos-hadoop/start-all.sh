#!/usr/bin/env bash

docker start hadoop1
docker start hadoop2
docker start hadoop3
docker start hadoop4
docker start hadoop5

pipework docker0 -i eth1 hadoop1 172.17.10.1/16@172.17.42.1
pipework docker0 -i eth1 hadoop2 172.17.10.2/16@172.17.42.1
pipework docker0 -i eth1 hadoop3 172.17.10.3/16@172.17.42.1
pipework docker0 -i eth1 hadoop4 172.17.10.4/16@172.17.42.1
pipework docker0 -i eth1 hadoop5 172.17.10.5/16@172.17.42.1

docker exec -d hadoop1 /bin/sh -c "cat /static/conf/hosts > /etc/hosts"
docker exec -d hadoop2 /bin/sh -c "cat /static/conf/hosts > /etc/hosts"
docker exec -d hadoop3 /bin/sh -c "cat /static/conf/hosts > /etc/hosts"
docker exec -d hadoop4 /bin/sh -c "cat /static/conf/hosts > /etc/hosts"
docker exec -d hadoop5 /bin/sh -c "cat /static/conf/hosts > /etc/hosts"

#docker exec -d hadoop3 hadoop-daemon.sh start journalnode 
#docker exec -d hadoop4 hadoop-daemon.sh start journalnode
#docker exec -d hadoop5 hadoop-daemon.sh start journalnode

iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 50071 -j DNAT --to-destination 172.17.10.1:50070
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 50072 -j DNAT --to-destination 172.17.10.2:50070
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 9001 -j DNAT --to-destination 172.17.10.1:9000
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 9002 -j DNAT --to-destination 172.17.10.2:9000
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 50013 -j DNAT --to-destination 172.17.10.3:50010
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 50014 -j DNAT --to-destination 172.17.10.4:50010
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 50015 -j DNAT --to-destination 172.17.10.5:50010

iptables -t nat -A POSTROUTING -s 172.17.10.1/32 -d 172.17.10.1/32 -p tcp -m tcp --dport 50070 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 172.17.10.2/32 -d 172.17.10.2/32 -p tcp -m tcp --dport 50070 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 172.17.10.1/32 -d 172.17.10.1/32 -p tcp -m tcp --dport 9000 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 172.17.10.2/32 -d 172.17.10.2/32 -p tcp -m tcp --dport 9000 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 172.17.10.3/32 -d 172.17.10.3/32 -p tcp -m tcp --dport 50010 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 172.17.10.4/32 -d 172.17.10.4/32 -p tcp -m tcp --dport 50010 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 172.17.10.5/32 -d 172.17.10.5/32 -p tcp -m tcp --dport 50010 -j MASQUERADE
