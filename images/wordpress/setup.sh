#!/bin/sh

rm etc/nginx/conf.d/default.conf
cp /default.conf /etc/nginx/conf.d
mkdir -p /run/nginx
mkdir -p /usr/share/webapps/

cd var/www/localhost/htdocs
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz

php-fpm7
nginx -g 'daemon off;'