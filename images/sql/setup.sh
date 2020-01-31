#!/bin/sh

DB_DATA_PATH="/var/lib/mysql"

mysql_install_db --user=mysql --datadir=${DB_DATA_PATH}
rm /etc/my.cnf.d/mariadb-server.cnf
cp mariadb-server.cnf /etc/my.cnf.d/
rc boot
rc-service mariadb start

echo "CREATE DATABASE wordpress;" | mysql
echo "CREATE USER 'max'@'%' identified by '123';" | mysql
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'max'@'%';" | mysql
echo "CREATE USER 'maxime'@'%' identified by '123';" | mysql
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'maxime'@'%';" | mysql
echo "CREATE USER 'cam'@'%' identified by '123';" | mysql
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'cam'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
echo "exit" | mysql
