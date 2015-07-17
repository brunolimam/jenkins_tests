FROM ubuntu:14.04
MAINTAINER Zach Langer zlanger@comverge.com

# Let's start with some basic stuff.
RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables
    
# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ubuntu/ | sh

# Install the magic wrapper.
ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
VOLUME /var/lib/docker
CMD ["wrapdocker"]
EXPOSE 3000
EXPOSE 22

RUN apt-get install -y openjdk-7-jdk
RUN apt-get install -y vim
RUN apt-get install -y openssh-server

COPY create_ssh.sh /
RUN bash create_ssh_link.sh