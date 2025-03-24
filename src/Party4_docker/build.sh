#!/bin/bash

docker build -t myapp:servertest .
docker run -d -p 80:81 --name mini_server myapp:servertest
curl localhost:80
curl localhost:80/status
