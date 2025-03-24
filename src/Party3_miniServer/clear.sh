#!/bin/bash

sudo docker stop mini_server 
sudo docker rm mini_server
sudo docker rmi -f nginx