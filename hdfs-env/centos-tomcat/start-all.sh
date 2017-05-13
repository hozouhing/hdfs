#!/usr/bin/env bash
docker start tomcat1
docker start tomcat2
docker start tomcat3

pipework docker0 -i eth1 tomcat1 172.17.40.1/16@172.17.42.1
pipework docker0 -i eth1 tomcat2 172.17.40.2/16@172.17.42.1
pipework docker0 -i eth1 tomcat3 172.17.40.3/16@172.17.42.1

docker exec -d tomcat1 /static/tomcat-8.5/bin/startup.sh
#docker exec -d tomcat2 /static/tomcat-8.5/bin/startup.sh
#docker exec -d tomcat3 /static/tomcat-8.5/bin/startup.sh

iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 8081 -j DNAT --to-destination 172.17.40.1:8080
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 8082 -j DNAT --to-destination 172.17.40.2:8080
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 8083 -j DNAT --to-destination 172.17.40.3:8080

iptables -t nat -A POSTROUTING -s 172.17.40.1/32 -d 172.17.40.1/32 -p tcp -m tcp --dport 8080 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 172.17.40.2/32 -d 172.17.40.2/32 -p tcp -m tcp --dport 8080 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 172.17.40.3/32 -d 172.17.40.3/32 -p tcp -m tcp --dport 8080 -j MASQUERADE

