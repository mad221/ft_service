#!/bin/sh

apk update
apk add php php-gettext php-pear php-mysql php-curl php-cli php-fpm php-cgi php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
apk add php7 php7-fpm php7-opcache php7-session
apk add php7-gd php7-mysqli php7-zlib php7-curl
apk add lighttpd php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php-mbstring

rm etc/nginx/conf.d/default.conf
cp /default.conf /etc/nginx/conf.d
rm /default.conf
mkdir -p /run/nginx
mkdir -p /usr/share/webapps/

cd var/www/localhost/htdocs && wget http://wordpress.org/latest.tar.gz &&  tar -xzvf latest.tar.gz && rm latest.tar.gz && cp -r wordpress/* .
cp /wp-config.php /var/www/localhost/htdocs/wordpress
php-fpm7
nginx -g 'daemon off;'
