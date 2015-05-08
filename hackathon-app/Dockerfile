FROM docker.core.tf/topface-dev

COPY php-fpm.conf /etc/php5/fpm/
COPY default /etc/nginx/sites-available/
COPY www.conf /etc/php5/fpm/pool.d/

COPY hackathon-app-entrypoint.sh /

RUN mkdir /var/log/php5-fpm/

RUN rm -rf /var/www/topface && \
    mkdir /var/www/project && \
    chown www-data:www-data /var/www/project


EXPOSE 80 443 9000

ENTRYPOINT ["/hackathon-app-entrypoint.sh"]