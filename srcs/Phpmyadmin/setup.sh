#!/bin/sh
apk update
apk add php php-gettext php-pear php-mysql php-curl php-cli php-fpm php-cgi php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
apk add php7 php7-fpm php7-opcache php7-session
apk add php7-gd php7-mysqli php7-zlib php7-curl
apk add lighttpd php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php-mbstring
apk add mysql mysql-client php-mysql php-mysqli

/usr/bin/mysql_install_db --user=mysql
/etc/init.d/mysql start && rc-update add mysql default
/usr/bin/mysqladmin -u root password 'password'

rm etc/nginx/conf.d/default.conf
cp /default.conf /etc/nginx/conf.d
rm /default.conf
ln -s /etc/nginx/site-available/default /etc/nginx/sites-enabled/
mkdir -p /run/nginx
mkdir -p /usr/share/webapps/

cd /usr/share/webapps
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.4/phpMyAdmin-4.9.4-all-languages.tar.gz
tar zxvf phpMyAdmin-4.9.4-all-languages.tar.gz
rm phpMyAdmin-4.9.4-all-languages.tar.gz
mv phpMyAdmin-4.9.4-all-languages phpmyadmin
chmod -R 777 /usr/share/webapps/
ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin
cp /config.inc.php /var/www/localhost/htdocs/phpmyadmin

php-fpm7
nginx -g 'daemon off;'
