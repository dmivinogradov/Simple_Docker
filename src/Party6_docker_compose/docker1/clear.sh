#!/bin/bash

docker stop mini_server
docker rm mini_server
docker system prune -a
