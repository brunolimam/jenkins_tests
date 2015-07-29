FROM ruby:2.2
MAINTAINER Zach Langer zlanger@comverge.com

RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV RAILS_VERSION 4.0.0

EXPOSE 3000
EXPOSE 22

RUN apt-get update
RUN apt-get install -y openjdk-7-jdk
RUN apt-get install -y vim
RUN apt-get install -y openssh-server

#COPY create_ssh_link.sh /
#RUN bash create_ssh_link.sh
