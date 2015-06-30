FROM ubuntu:14.04
MAINTAINER James Turnbull "james@example.com"
ENV REFRESHED_AT 2014-06-01
RUN apt-get update

RUN apt-get install -y nginx openssh-server git-core openssh-client curl
RUN apt-get install -y nano
RUN apt-get install -y build-essential
RUN apt-get install -y openssl libreadline6 libreadline6-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config
 
# install RVM, Ruby, and Bundler
RUN /bin/bash -l -c “\curl -sSL https://get.rvm.io | bash -s stable”
RUN /bin/bash -l -c "rvm requirements”
RUN /bin/bash -l -c "rvm install 2.1.5”
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc rspec ci_reporter_rspec"

