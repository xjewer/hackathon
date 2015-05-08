#!/bin/bash

sudo apt-get update && sudo apt-get install -y wget
wget -qO- https://get.docker.com/ | sh
curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
curl -L https://raw.githubusercontent.com/docker/compose/1.2.0/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose

mkdir -p /var/log/hackathon/nginx
mkdir -p /var/log/hackathon/php-fpm
mkdir -p /var/www/project
mkdir -p /var/db/redis
mkdir -p /var/db/postgresql/
mkdir -p /var/db/mysql/

docker-compose up -d