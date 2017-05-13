FROM base

MAINTAINER hozouhing "jeffhoo@foxmail.com"

RUN yum install -y pcre-devel zlib-devel openssl-devel

RUN mkdir -p /dynamic/downloads && mkdir -p /dynamic/softwares

ADD nginx-1.7.3 /dynamic/downloads/nginx

ADD keepalived-1.2.22 /dynamic/downloads/keepalived

RUN cd /dynamic/downloads/nginx && ./configure --prefix=/dynamic/softwares/nginx --with-pcre && make && make install

RUN cd /dynamic/downloads/keepalived && ./configure --prefix=/dynamic/softwares/keepalived && make && make install

ENV NGINX_HOME /dynamic/softwares/nginx
ENV PATH $PATH:$NGINX_HOME/sbin

ENV KEEPALIVED_HOME /dynamic/softwares/keepalived
ENV PATH $PATH:$KEEPALIVED_HOME/sbin

EXPOSE 80 443 112
