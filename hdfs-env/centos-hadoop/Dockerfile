FROM centos:6.6

MAINTAINER hozouhing "jeffhoo@foxmail.com"

#base
RUN yum install -y net-tools

#ssh
RUN yum install -y openssh-server openssh-clients sudo
RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
RUN echo "root:root" | chpasswd
RUN echo "root  ALL=(ALL)       ALL" >> /etc/sudoers
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
Add .ssh /root/.ssh
RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]

#java
#ADD jdk1.8 /usr/local/jdk1.8
ENV JAVA_HOME /static/jdk1.8
ENV PATH $PATH:$JAVA_HOME/bin

#hadoop
RUN yum install -y which
#ADD hadoop-2.6.0 /usr/local/hadoop
ENV HADOOP_HOME /static/hadoop-2.6.0
ENV PATH $PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
ExPOSE 80 50070 50075 50090 50105 50030 50060 9000 50010 50020 50100 9001 8485 

RUN yum clean all
