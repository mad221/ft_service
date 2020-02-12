#!bin/sh

cp /vsftpd.conf /etc/vsftpd/vsftpd.conf

echo "pasv_address=`cat ip_file`" >> /etc/vsftpd/vsftpd.conf

mkdir -p srv/ftp
chmod 777 -R /srv/ftp
chmod 775 srv
mkdir etc/ssl/private/


vsftpd /etc/vsftpd/vsftpd.conf
