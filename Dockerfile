FROM centos:latest

RUN yum install -y wget

RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo

RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

RUN yum install -y jenkins

RUN yum install -y java-11-openjdk.x86_64

RUN yum install -y net-tools
RUN yum install -y git
RUN yum install -y python3
RUN yum install -y sudo

RUN yum install -y initscripts

RUN echo "jenkins     ALL=(ALL)      NOPASSWD:ALL" >> /etc/sudoers

RUN echo "/etc/rc.d/init.d/jenkins start" >> /etc/bashrc
COPY hello.py
