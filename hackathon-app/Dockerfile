FROM docker.core.tf/topface-dev

#install packages
RUN apt-get update && apt-get install -y gettext

COPY php-fpm.conf /etc/php5/fpm/
COPY default /etc/nginx/sites-available/
COPY www.conf /etc/php5/fpm/pool.d/

COPY hackathon-app-entrypoint.sh /

RUN mkdir /var/log/php5-fpm/

RUN mkdir /var/www/project && \
    chown www-data:www-data /var/www/project

RUN /hackathon-app-entrypoint.sh

EXPOSE 80 443 9000
