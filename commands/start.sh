#!/bin/bash
sudo kill -9 $(sudo lsof -t -i:3306)
sudo docker-compose up -d
echo 'start done ...'


