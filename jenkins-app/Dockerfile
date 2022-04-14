FROM jenkins/jenkins:lts

user root

### update package manager and install python 3
RUN apt-get update && apt-get install -y \
    sudo \
    python3-pip

### install aws cli
RUN pip3 uninstall awscli -y && pip3 install awscli

RUN unlink /bin/sh && ln -s /bin/bash sh
RUN usermod -aG sudo jenkins
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN groupadd -g 994 docker
RUN usermod -aG docker jenkins

user jenkins

