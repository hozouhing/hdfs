#!/usr/bin/env bash
docker exec -i tomcat1 /static/tomcat7/bin/shutdown.sh
docker exec -i tomcat2 /static/tomcat7/bin/shutdown.sh
docker exec -i tomcat3 /static/tomcat7/bin/shutdown.sh

docker stop tomcat1
docker stop tomcat2
docker stop tomcat3

