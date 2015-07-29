FROM ruby:2.2

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY Gemfile /usr/src/app/
ONBUILD COPY Gemfile.lock /usr/src/app/
ONBUILD RUN bundle install

ONBUILD COPY . /usr/src/app

RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

MAINTAINER Zach Langer zlanger@comverge.com
EXPOSE 3000

RUN apt-get update
RUN apt-get install -y openjdk-7-jdk
RUN apt-get install -y openssh-server
RUN apt-get install -y rails

COPY create_ssh_link.sh /usr/src/app/
RUN bash create_ssh_link.sh
