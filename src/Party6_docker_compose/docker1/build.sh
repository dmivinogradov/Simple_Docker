#!/bin/bash

docker build -t myapp:servertest .
docker run -d --name mini_server myapp:servertest
