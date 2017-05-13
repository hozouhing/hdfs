FROM centos:6.6

MAINTAINER hozouhing "jeffhoo@foxmail.com"

#base
RUN yum install -y net-tools gcc make

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

