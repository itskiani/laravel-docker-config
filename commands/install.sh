#!/bin/bash
sudo cp .env.example .env
sudo cp ../.env.example ../.env
sudo docker-compose up --build -d
echo 'please wait ...'
sleep 30
sudo docker-compose run --rm composer install --ignore-platform-reqs
sudo docker-compose run --rm artisan migrate --seed
sudo docker-compose run php sh -c "chown -R www-data:root ./storage && echo 'permission accept ...' && exit"
sudo docker-compose run --rm artisan storage:link
sudo docker-compose run --rm artisan key:generate
echo 'install done ...'


