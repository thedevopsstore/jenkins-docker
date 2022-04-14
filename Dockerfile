FROM jenkins/jenkins:lts

user root

### update package manager and install python 3
RUN apt-get update && apt-get install -y \
    sudo \
    python3-pip

### install aws cli
RUN pip3 uninstall awscli -y && pip3 install awscli

RUN unlink /bin/sh && ln -s /bin/bash /bin/sh
RUN usermod -aG sudo jenkins
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall

RUN groupadd -g 994 docker
RUN usermod -aG docker jenkins

## install docker-compose
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

user jenkins

#RUN curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall


