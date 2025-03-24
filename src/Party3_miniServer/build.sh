#!/bin/bash

sudo docker pull nginx
sudo docker run -d -p 81:81 --name mini_server nginx
sudo docker cp ./nginx.conf mini_server:/etc/nginx/
sudo docker cp ./mini_server.c mini_server:/etc/nginx/
sudo docker exec mini_server apt update
sudo docker exec mini_server apt install -y gcc spawn-fcgi libfcgi-dev
sudo docker exec mini_server gcc /etc/nginx/mini_server.c -o /etc/nginx/webserver -l fcgi
sudo docker exec mini_server spawn-fcgi -p 8080 /etc/nginx/webserver
sudo docker exec mini_server nginx -s reload
curl localhost:81
