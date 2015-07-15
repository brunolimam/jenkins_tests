FROM rails:onbuild
MAINTAINER zach langer
EXPOSE 3000
EXPOSE 22

RUN apt-get update
RUN apt-get install -y openjdk-7-jdk
RUN apt-get install -y vim
RUN apt-get install -y openssh-server

COPY create_ssh_link.sh /
RUN bash create_ssh_link.sh
