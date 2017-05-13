#!/usr/bin/env bash
docker start nginx1
docker start nginx2

pipework docker0 -i eth1 nginx1 172.17.30.1/16@172.17.42.1
pipework docker0 -i eth1 nginx2 172.17.30.2/16@172.17.42.1

iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 8001 -j DNAT --to-destination 172.17.30.1:80
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 8002 -j DNAT --to-destination 172.17.30.2:80

iptables -t nat -A POSTROUTING -s 172.17.30.1/32 -d 172.17.30.1/32 -p tcp -m tcp --dport 80 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 172.17.30.2/32 -d 172.17.30.2/32 -p tcp -m tcp --dport 80 -j MASQUERADE

docker exec -i nginx1 nginx -c /static/nginx/conf/nginx.conf
docker exec -i nginx2 nginx -c /static/nginx/conf/nginx.conf

docker exec -i nginx1 /bin/sh -c "service keepalived start"
docker exec -i nginx2 /bin/sh -c "service keepalived start"
