FROM rails:onbuild
MAINTAINER zach langer zlanger@comverge.com
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y openssh-server
EXPOSE 3000
EXPOSE 22