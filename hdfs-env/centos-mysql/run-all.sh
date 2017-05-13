#!/usr/bin/env bash
docker run -d --privileged -h="mysql1" --net="none" --name="mysql1" -v /home/hozouhing/dockers/static:/static mysql
docker run -d --privileged -h="mysql2" --net="none" --name="mysql2" -v /home/hozouhing/dockers/static:/static mysql

pipework docker0 -i eth1 mysql1 172.17.50.1/16@172.17.42.1
pipework docker0 -i eth1 mysql2 172.17.50.2/16@172.17.42.1

iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 33061 -j DNAT --to-destination 172.17.50.1:3306
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport 33062 -j DNAT --to-destination 172.17.50.2:3306

iptables -t nat -A POSTROUTING -s 172.17.50.1/32 -d 172.17.50.1/32 -p tcp -m tcp --dport 3306 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 172.17.50.2/32 -d 172.17.50.2/32 -p tcp -m tcp --dport 3306 -j MASQUERADE

docker exec -i mysql1 /bin/sh -c "cat /static/mysql/master1.cnf > /etc/my.cnf"
docker exec -i mysql2 /bin/sh -c "cat /static/mysql/master2.cnf > /etc/my.cnf"

docker exec -i mysql1 /bin/sh -c "ln -s /dynamic/softwares/keepalived/sbin/keepalived /usr/bin"
docker exec -i mysql1 /bin/sh -c "ln -s /dynamic/softwares/keepalived/etc/rc.d/init.d/keepalived /etc/init.d/"
docker exec -i mysql1 /bin/sh -c "ln -s /dynamic/softwares/keepalived/etc/sysconfig/keepalived /etc/sysconfig/"

docker exec -i mysql2 /bin/sh -c "ln -s /dynamic/softwares/keepalived/sbin/keepalived /usr/bin"
docker exec -i mysql2 /bin/sh -c "ln -s /dynamic/softwares/keepalived/etc/rc.d/init.d/keepalived /etc/init.d/"
docker exec -i mysql2 /bin/sh -c "ln -s /dynamic/softwares/keepalived/etc/sysconfig/keepalived /etc/sysconfig/"

docker exec -i mysql1 service keepalived start
docker exec -i mysql2 service keepalived start

docker exec -i mysql1 service mysqld start
docker exec -i mysql2 service mysqld start

docker exec -i mysql1 mysql -uroot -proot -e "create user 'root'@'%' identified by 'root';grant all privileges on *.* to root@'%';FLUSH PRIVILEGES;"
docker exec -i mysql2 mysql -uroot -proot -e "create user 'root'@'%' identified by 'root';grant all privileges on *.* to root@'%';FLUSH PRIVILEGES;"

