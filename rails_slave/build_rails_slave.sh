#!/bin/bash

docker build -t zlanger/dockerrails .
docker run -p 5011:22 --name rails_slave --privileged -t zlanger/dockerrails
