#!/bin/sh

rm etc/nginx/conf.d/default.conf
cp /default.conf /etc/nginx/conf.d
mkdir -p /run/nginx
nginx -g 'daemon off;'
