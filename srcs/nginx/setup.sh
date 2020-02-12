#!/bin/sh

rc boot
rc-update add sshd
/etc/init.d/sshd start
rm /etc/ssh/sshd_config
cp /sshd_config /etc/ssh/sshd_config
echo "root:123" | chpasswd
/etc/init.d/sshd restart
rm etc/nginx/conf.d/default.conf
cp /default.conf /etc/nginx/conf.d
mkdir -p /run/nginx
nginx -g 'daemon off;'
