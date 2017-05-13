FROM base

MAINTAINER hozouhing "jeffhoo@foxmail.com"

#keepalived
RUN yum -y install openssl-devel
RUN mkdir -p /dynamic/downloads && mkdir -p /dynamic/softwares
ADD keepalived-1.2.22 /dynamic/downloads/keepalived
RUN cd /dynamic/downloads/keepalived && ./configure --prefix=/dynamic/softwares/keepalived && make && make install
EXPOSE 112

#mysql
RUN yum install -y cmake gcc-c++ gcc ncurses-devel perl
ADD mysql-5.6.36 /dynamic/downloads/mysql

RUN cd /dynamic/downloads/mysql && cmake . -DCMAKE_INSTALL_PREFIX=/dynamic/softwares/mysql -DMYSQL_DATADIR=/dynamic/softwares/mysql/data -DSYSCONFDIR=/etc -DWITH_INNOBASE_STORAGE_ENGINE=1 -DWITH_ARCHIVE_STORAGE_ENGINE=1 -DWITH_BLACKHOLE_STORAGE_ENGINE=1 -DWITH_PARTITION_STORAGE_ENGINE=1 -DWITH_PERFSCHEMA_STORAGE_ENGINE=1 -DWITHOUT_EXAMPLE_STORAGE_ENGINE=1 -DWITHOUT_FEDERATED_STORAGE_ENGINE=1 -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_EXTRA_CHARSETS=all -DENABLED_LOCAL_INFILE=1 -DWITH_READLINE=1 -DMYSQL_UNIX_ADDR=/dynamic/softwares/mysql/mysql.sock -DMYSQL_TCP_PORT=3306 -DMYSQL_USER=mysql -DCOMPILATION_COMMENT="hozouhing" -DENABLE_DTRACE=0 -DOPTIMIZER_TRACE=1 -DWITH_DEBUG=1 && make && make install

RUN useradd mysql
RUN echo "mysql:mysql" | chpasswd
RUN echo "mysql   ALL=(ALL)       ALL" >> /etc/sudoers

RUN cd /dynamic/softwares/mysql && sudo chown -R mysql:mysql ./
COPY my.cnf /etc/my.cnf
RUN sudo chown mysql:mysql /etc/my.cnf

RUN cd /dynamic/softwares/mysql && sudo ./scripts/mysql_install_db --user=mysql --basedir=/dynamic/softwares/mysql --datadir=/dynamic/softwares/mysql/data/

RUN sudo cp /dynamic/softwares/mysql/support-files/mysql.server /etc/init.d/mysqld
ENV MYSQL_HOME /dynamic/softwares/mysql
ENV PATH $PATH:$MYSQL_HOME/bin

EXPOSE 3306

