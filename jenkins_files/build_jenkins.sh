#!/bin/bash

docker build -t zlanger/dockerjenkins .
docker run -p 8080:8080 --name jenkins --privileged -d zlanger/dockerjenkins