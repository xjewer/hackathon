#!/bin/bash
set -e
sed -i 's/listen = \/var\/run\/php5-fpm.sock/listen = 9000/g' /etc/php5/fpm/pool.d/www.conf
/etc/init.d/php5-fpm start
/etc/init.d/nginx start
exec "$@"