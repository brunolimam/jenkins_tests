#!/bin/bash

docker build -t zlanger/dockerslave .
docker run -p 5011:22 --name slave2 --privileged -t -i zlanger/dockerslave