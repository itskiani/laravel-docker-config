#!/bin/bash
sudo docker-compose down
sudo docker container prune
sudo rm -rf ./mysql
echo 'uninstall done ...'

