#!/bin/bash

docker build -t zlanger/dockerslave .
docker run -p 5022:22 --name slave1 --privileged -t -i zlanger/dockerslave